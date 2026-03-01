import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class PernVotingAppStack extends pulumi.Stack {
  late final pulumi.Output<String> URL;

  PernVotingAppStack() {
    final config = pulumi.Config();
    final sqlAdminName = config.require('sql-admin-name');
    final sqlAdminPassword = config.require('sql-admin-password');
    final sqlUserName = config.require('sql-user-name');
    final sqlUserPassword = config.require('sql-user-password');

    final appVpc = aws.ec2.Vpc(
      'app-vpc',
      args: aws.ec2.VpcArgs(cidrBlock: '172.31.0.0/16', enableDnsHostnames: true),
    );

    final appGateway = aws.ec2.InternetGateway(
      'app-gateway',
      args: aws.ec2.InternetGatewayArgs(vpcId: appVpc.id),
    );

    final appRoutetable = aws.ec2.RouteTable(
      'app-routetable',
      args: aws.ec2.RouteTableArgs(
        vpcId: appVpc.id,
        routes: [
          aws.ec2.RouteTableRoute(cidrBlock: '0.0.0.0/0', gatewayId: appGateway.id),
        ],
      ),
    );

    final firstRdsSubnet = aws.ec2.Subnet(
      'first-rds-subnet',
      args: aws.ec2.SubnetArgs(
        vpcId: appVpc.id,
        cidrBlock: '172.31.0.0/20',
        mapPublicIpOnLaunch: true,
      ),
    );

    final secondRdsSubnet = aws.ec2.Subnet(
      'second-rds-subnet',
      args: aws.ec2.SubnetArgs(
        vpcId: appVpc.id,
        cidrBlock: '172.31.128.0/20',
        mapPublicIpOnLaunch: true,
      ),
    );

    aws.ec2.RouteTableAssociation(
      'rta-subnet-1',
      args: aws.ec2.RouteTableAssociationArgs(
        routeTableId: appRoutetable.id,
        subnetId: firstRdsSubnet.id,
      ),
    );
    aws.ec2.RouteTableAssociation(
      'rta-subnet-2',
      args: aws.ec2.RouteTableAssociationArgs(
        routeTableId: appRoutetable.id,
        subnetId: secondRdsSubnet.id,
      ),
    );

    final rdsSecurityGroup = aws.ec2.SecurityGroup(
      'rds-security-group',
      args: aws.ec2.SecurityGroupArgs(
        vpcId: appVpc.id,
        description: 'Enable app connectivity',
        ingress: [
          aws.ec2.SecurityGroupIngress(
            protocol: 'tcp',
            fromPort: 0,
            toPort: 65535,
            cidrBlocks: ['0.0.0.0/0'],
          ),
        ],
        egress: [
          aws.ec2.SecurityGroupEgress(
            protocol: '-1',
            fromPort: 0,
            toPort: 0,
            cidrBlocks: ['0.0.0.0/0'],
          ),
        ],
      ),
    );

    final rdsSubnetGroup = aws.rds.SubnetGroup(
      'rds-subnet-group',
      args: aws.rds.SubnetGroupArgs(
        subnetIds: [firstRdsSubnet.id, secondRdsSubnet.id].output(),
      ),
    );

    final postgresqlRdsServer = aws.rds.Instance(
      'postgresql-rds-server',
      args: aws.rds.InstanceArgs(
        engine: 'postgres',
        username: sqlAdminName,
        password: sqlAdminPassword,
        instanceClass: 'db.t3.micro',
        allocatedStorage: 20,
        skipFinalSnapshot: true,
        publiclyAccessible: true,
        port: 2000,
        dbSubnetGroupName: rdsSubnetGroup.name,
        vpcSecurityGroupIds: [rdsSecurityGroup.id].output(),
      ),
    );

    final appCluster = aws.ecs.Cluster('app-cluster');

    final ecsExecutionRole = aws.iam.Role(
      'ecs-task-execution-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Effect': 'Allow',
              'Principal': {'Service': 'ecs-tasks.amazonaws.com'},
              'Action': 'sts:AssumeRole',
            },
          ],
        }),
      ),
    );
    aws.iam.RolePolicyAttachment(
      'ecs-task-execution-policy',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: ecsExecutionRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy',
      ),
    );

    final lbSg = aws.ec2.SecurityGroup(
      'lb-security-group',
      args: aws.ec2.SecurityGroupArgs(
        vpcId: appVpc.id,
        ingress: [
          aws.ec2.SecurityGroupIngress(
            protocol: 'tcp',
            fromPort: 80,
            toPort: 80,
            cidrBlocks: ['0.0.0.0/0'],
          ),
        ],
        egress: [
          aws.ec2.SecurityGroupEgress(
            protocol: '-1',
            fromPort: 0,
            toPort: 0,
            cidrBlocks: ['0.0.0.0/0'],
          ),
        ],
      ),
    );

    final appSubnets = [firstRdsSubnet.id, secondRdsSubnet.id].output();

    final serverLb = aws.lb.LoadBalancer(
      'server-lb',
      args: aws.lb.LoadBalancerArgs(
        loadBalancerType: 'application',
        securityGroups: [lbSg.id].output(),
        subnets: appSubnets,
      ),
    );
    final serverTg = aws.lb.TargetGroup(
      'server-tg',
      args: aws.lb.TargetGroupArgs(
        port: 5000,
        protocol: 'HTTP',
        targetType: 'ip',
        vpcId: appVpc.id,
      ),
    );
    aws.lb.Listener(
      'server-listener',
      args: aws.lb.ListenerArgs(
        loadBalancerArn: serverLb.arn,
        port: 80,
        protocol: 'HTTP',
        defaultActions: [
          aws.lb.ListenerDefaultAction(type: 'forward', targetGroupArn: serverTg.arn),
        ],
      ),
    );

    final serverTask = aws.ecs.TaskDefinition(
      'server-task',
      args: aws.ecs.TaskDefinitionArgs(
        family: 'server-side-service',
        requiresCompatibilities: ['FARGATE'],
        networkMode: 'awsvpc',
        cpu: '256',
        memory: '512',
        executionRoleArn: ecsExecutionRole.arn,
        containerDefinitions: pulumi.Output.tuple4(
          postgresqlRdsServer.address,
          postgresqlRdsServer.port,
          sqlUserName.output(),
          sqlUserPassword.output(),
        ).apply(
          (v) => jsonEncode([
            {
              'name': 'serversideService',
              'image': 'public.ecr.aws/docker/library/node:20-alpine',
              'essential': true,
              'portMappings': [
                {'containerPort': 5000, 'hostPort': 5000, 'protocol': 'tcp'},
              ],
              'command': ['sh', '-c', 'node -e "console.log(\\\"server\\\")" && sleep 3600'],
              'environment': [
                {'name': 'USER_NAME', 'value': v.$3},
                {'name': 'USER_PASSWORD', 'value': v.$4},
                {'name': 'RDS_ADDRESS', 'value': v.$1},
                {'name': 'RDS_PORT', 'value': '${v.$2}'},
                {'name': 'DATABASE_NAME', 'value': 'votes'},
              ],
            },
          ]),
        ),
      ),
    );

    aws.ecs.Service(
      'server-service',
      args: aws.ecs.ServiceArgs(
        cluster: appCluster.arn,
        desiredCount: 1,
        launchType: 'FARGATE',
        taskDefinition: serverTask.arn,
        networkConfiguration: aws.ecs.ServiceNetworkConfiguration(
          assignPublicIp: true,
          subnets: appSubnets,
          securityGroups: [rdsSecurityGroup.id, lbSg.id].output(),
        ).output(),
        loadBalancers: [
          aws.ecs.ServiceLoadBalancer(
            targetGroupArn: serverTg.arn,
            containerName: 'serversideService',
            containerPort: 5000,
          ),
        ],
      ),
    );

    final clientLb = aws.lb.LoadBalancer(
      'client-lb',
      args: aws.lb.LoadBalancerArgs(
        loadBalancerType: 'application',
        securityGroups: [lbSg.id].output(),
        subnets: appSubnets,
      ),
    );
    final clientTg = aws.lb.TargetGroup(
      'client-tg',
      args: aws.lb.TargetGroupArgs(
        port: 3000,
        protocol: 'HTTP',
        targetType: 'ip',
        vpcId: appVpc.id,
      ),
    );
    aws.lb.Listener(
      'client-listener',
      args: aws.lb.ListenerArgs(
        loadBalancerArn: clientLb.arn,
        port: 80,
        protocol: 'HTTP',
        defaultActions: [
          aws.lb.ListenerDefaultAction(type: 'forward', targetGroupArn: clientTg.arn),
        ],
      ),
    );

    final clientTask = aws.ecs.TaskDefinition(
      'client-task',
      args: aws.ecs.TaskDefinitionArgs(
        family: 'client-side-service',
        requiresCompatibilities: ['FARGATE'],
        networkMode: 'awsvpc',
        cpu: '256',
        memory: '512',
        executionRoleArn: ecsExecutionRole.arn,
        containerDefinitions: serverLb.dnsName.apply(
          (serverHost) => jsonEncode([
            {
              'name': 'clientsideService',
              'image': 'public.ecr.aws/docker/library/node:20-alpine',
              'essential': true,
              'portMappings': [
                {'containerPort': 3000, 'hostPort': 3000, 'protocol': 'tcp'},
              ],
              'command': ['sh', '-c', 'node -e "console.log(\\\"client\\\")" && sleep 3600'],
              'environment': [
                {'name': 'SERVER_HOSTNAME', 'value': serverHost},
              ],
            },
          ]),
        ),
      ),
    );

    aws.ecs.Service(
      'client-service',
      args: aws.ecs.ServiceArgs(
        cluster: appCluster.arn,
        desiredCount: 1,
        launchType: 'FARGATE',
        taskDefinition: clientTask.arn,
        networkConfiguration: aws.ecs.ServiceNetworkConfiguration(
          assignPublicIp: true,
          subnets: appSubnets,
          securityGroups: [rdsSecurityGroup.id, lbSg.id].output(),
        ).output(),
        loadBalancers: [
          aws.ecs.ServiceLoadBalancer(
            targetGroupArn: clientTg.arn,
            containerName: 'clientsideService',
            containerPort: 3000,
          ),
        ],
      ),
    );

    URL = clientLb.dnsName;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('URL', URL)];
  }
}
