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
      args: aws.ec2.VpcArgs(
        cidrBlock: '172.31.0.0/16'.input(),
        enableDnsHostnames: true.input(),
      ),
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
          aws.ec2.RouteTableRoute(
            cidrBlock: '0.0.0.0/0'.input(),
            gatewayId: appGateway.id,
          ),
        ].input(),
      ),
    );

    final firstRdsSubnet = aws.ec2.Subnet(
      'first-rds-subnet',
      args: aws.ec2.SubnetArgs(
        vpcId: appVpc.id,
        cidrBlock: '172.31.0.0/20'.input(),
        mapPublicIpOnLaunch: true.input(),
      ),
    );

    final secondRdsSubnet = aws.ec2.Subnet(
      'second-rds-subnet',
      args: aws.ec2.SubnetArgs(
        vpcId: appVpc.id,
        cidrBlock: '172.31.128.0/20'.input(),
        mapPublicIpOnLaunch: true.input(),
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
        description: 'Enable app connectivity'.input(),
        ingress: [
          aws.ec2.SecurityGroupIngress(
            protocol: 'tcp'.input(),
            fromPort: 0.input(),
            toPort: 65535.input(),
            cidrBlocks: ['0.0.0.0/0'].input(),
          ),
        ].input(),
        egress: [
          aws.ec2.SecurityGroupEgress(
            protocol: '-1'.input(),
            fromPort: 0.input(),
            toPort: 0.input(),
            cidrBlocks: ['0.0.0.0/0'].input(),
          ),
        ].input(),
      ),
    );

    final rdsSubnetGroup = aws.rds.SubnetGroup(
      'rds-subnet-group',
      args: aws.rds.SubnetGroupArgs(
        subnetIds: pulumi.Output.all([
          firstRdsSubnet.id,
          secondRdsSubnet.id,
        ]).apply<List<String>>((List<String> ids) => ids).input(),
      ),
    );

    final postgresqlRdsServer = aws.rds.Instance(
      'postgresql-rds-server',
      args: aws.rds.InstanceArgs(
        engine: 'postgres'.input(),
        username: sqlAdminName.input(),
        password: sqlAdminPassword.input(),
        instanceClass: 'db.t3.micro'.input(),
        allocatedStorage: 20.input(),
        skipFinalSnapshot: true.input(),
        publiclyAccessible: true.input(),
        port: 2000.input(),
        dbSubnetGroupName: rdsSubnetGroup.name.input(),
        vpcSecurityGroupIds: pulumi.Output.all([
          rdsSecurityGroup.id,
        ]).apply<List<String>>((List<String> ids) => [ids[0]]).input(),
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
        }).input(),
      ),
    );
    aws.iam.RolePolicyAttachment(
      'ecs-task-execution-policy',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: ecsExecutionRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy'
                .input(),
      ),
    );

    final lbSg = aws.ec2.SecurityGroup(
      'lb-security-group',
      args: aws.ec2.SecurityGroupArgs(
        vpcId: appVpc.id,
        ingress: [
          aws.ec2.SecurityGroupIngress(
            protocol: 'tcp'.input(),
            fromPort: 80.input(),
            toPort: 80.input(),
            cidrBlocks: ['0.0.0.0/0'].input(),
          ),
        ].input(),
        egress: [
          aws.ec2.SecurityGroupEgress(
            protocol: '-1'.input(),
            fromPort: 0.input(),
            toPort: 0.input(),
            cidrBlocks: ['0.0.0.0/0'].input(),
          ),
        ].input(),
      ),
    );

    final appSubnets = pulumi.Output.all([
      firstRdsSubnet.id,
      secondRdsSubnet.id,
    ]).apply<List<String>>((List<String> ids) => ids).input();

    final serverLb = aws.lb.LoadBalancer(
      'server-lb',
      args: aws.lb.LoadBalancerArgs(
        loadBalancerType: 'application'.input(),
        securityGroups: pulumi.Output.all([
          lbSg.id,
        ]).apply<List<String>>((List<String> ids) => [ids[0]]).input(),
        subnets: appSubnets,
      ),
    );
    final serverTg = aws.lb.TargetGroup(
      'server-tg',
      args: aws.lb.TargetGroupArgs(
        port: 5000.input(),
        protocol: 'HTTP'.input(),
        targetType: 'ip'.input(),
        vpcId: appVpc.id,
      ),
    );
    aws.lb.Listener(
      'server-listener',
      args: aws.lb.ListenerArgs(
        loadBalancerArn: serverLb.arn,
        port: 80.input(),
        protocol: 'HTTP'.input(),
        defaultActions: [
          aws.lb.ListenerDefaultAction(
            type: 'forward'.input(),
            targetGroupArn: serverTg.arn,
          ),
        ].input(),
      ),
    );

    final serverTask = aws.ecs.TaskDefinition(
      'server-task',
      args: aws.ecs.TaskDefinitionArgs(
        family: 'server-side-service'.input(),
        requiresCompatibilities: ['FARGATE'].input(),
        networkMode: 'awsvpc'.input(),
        cpu: '256'.input(),
        memory: '512'.input(),
        executionRoleArn: ecsExecutionRole.arn,
        containerDefinitions:
            pulumi.Output.all([
              postgresqlRdsServer.address,
              postgresqlRdsServer.port,
              sqlUserName.output(),
              sqlUserPassword.output(),
            ]).apply<String>((values) {
              final address = values[0] as String;
              final port = values[1] as int;
              final userName = values[2] as String;
              final userPassword = values[3] as String;

              return jsonEncode([
                {
                  'name': 'serversideService',
                  'image': 'public.ecr.aws/docker/library/node:20-alpine',
                  'essential': true,
                  'portMappings': [
                    {
                      'containerPort': 5000,
                      'hostPort': 5000,
                      'protocol': 'tcp',
                    },
                  ],
                  'command': [
                    'sh',
                    '-c',
                    'node -e "console.log(\\"server\\")" && sleep 3600',
                  ],
                  'environment': [
                    {'name': 'USER_NAME', 'value': userName},
                    {'name': 'USER_PASSWORD', 'value': userPassword},
                    {'name': 'RDS_ADDRESS', 'value': address},
                    {'name': 'RDS_PORT', 'value': '$port'},
                    {'name': 'DATABASE_NAME', 'value': 'votes'},
                  ],
                },
              ]);
            }),
      ),
    );

    aws.ecs.Service(
      'server-service',
      args: aws.ecs.ServiceArgs(
        cluster: appCluster.arn,
        desiredCount: 1.input(),
        launchType: 'FARGATE'.input(),
        taskDefinition: serverTask.arn,
        networkConfiguration: aws.ecs
            .ServiceNetworkConfiguration(
              assignPublicIp: true.input(),
              subnets: appSubnets,
              securityGroups: pulumi.Output.all([
                rdsSecurityGroup.id,
                lbSg.id,
              ]).apply<List<String>>((List<String> ids) => ids).input(),
            )
            .input(),
        loadBalancers: [
          aws.ecs.ServiceLoadBalancer(
            targetGroupArn: serverTg.arn,
            containerName: 'serversideService'.input(),
            containerPort: 5000.input(),
          ),
        ].input(),
      ),
    );

    final clientLb = aws.lb.LoadBalancer(
      'client-lb',
      args: aws.lb.LoadBalancerArgs(
        loadBalancerType: 'application'.input(),
        securityGroups: pulumi.Output.all([
          lbSg.id,
        ]).apply<List<String>>((List<String> ids) => [ids[0]]).input(),
        subnets: appSubnets,
      ),
    );
    final clientTg = aws.lb.TargetGroup(
      'client-tg',
      args: aws.lb.TargetGroupArgs(
        port: 3000.input(),
        protocol: 'HTTP'.input(),
        targetType: 'ip'.input(),
        vpcId: appVpc.id,
      ),
    );
    aws.lb.Listener(
      'client-listener',
      args: aws.lb.ListenerArgs(
        loadBalancerArn: clientLb.arn,
        port: 80.input(),
        protocol: 'HTTP'.input(),
        defaultActions: [
          aws.lb.ListenerDefaultAction(
            type: 'forward'.input(),
            targetGroupArn: clientTg.arn,
          ),
        ].input(),
      ),
    );

    final clientTask = aws.ecs.TaskDefinition(
      'client-task',
      args: aws.ecs.TaskDefinitionArgs(
        family: 'client-side-service'.input(),
        requiresCompatibilities: ['FARGATE'].input(),
        networkMode: 'awsvpc'.input(),
        cpu: '256'.input(),
        memory: '512'.input(),
        executionRoleArn: ecsExecutionRole.arn,
        containerDefinitions: serverLb.dnsName.apply(
          (String serverHost) => jsonEncode([
            {
              'name': 'clientsideService',
              'image': 'public.ecr.aws/docker/library/node:20-alpine',
              'essential': true,
              'portMappings': [
                {'containerPort': 3000, 'hostPort': 3000, 'protocol': 'tcp'},
              ],
              'command': [
                'sh',
                '-c',
                'node -e "console.log(\\\"client\\\")" && sleep 3600',
              ],
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
        desiredCount: 1.input(),
        launchType: 'FARGATE'.input(),
        taskDefinition: clientTask.arn,
        networkConfiguration: aws.ecs
            .ServiceNetworkConfiguration(
              assignPublicIp: true.input(),
              subnets: appSubnets,
              securityGroups: pulumi.Output.all([
                rdsSecurityGroup.id,
                lbSg.id,
              ]).apply<List<String>>((List<String> ids) => ids).input(),
            )
            .input(),
        loadBalancers: [
          aws.ecs.ServiceLoadBalancer(
            targetGroupArn: clientTg.arn,
            containerName: 'clientsideService'.input(),
            containerPort: 3000.input(),
          ),
        ].input(),
      ),
    );

    URL = clientLb.dnsName;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('URL', URL)];
  }
}
