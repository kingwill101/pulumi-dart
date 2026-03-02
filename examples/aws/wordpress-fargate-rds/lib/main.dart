import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_random/pulumi_random.dart' as random;

class WordpressFargateRdsStack extends pulumi.Stack {
  late final pulumi.Output<String> webServiceUrl;
  late final pulumi.Output<String> ecsClusterName;
  late final pulumi.Output<String> databaseEndpoint;
  late final pulumi.Output<String> databaseUserName;
  late final pulumi.Output<String> databasePassword;

  WordpressFargateRdsStack() {
    final config = pulumi.Config();
    final serviceName = config.get('serviceName') ?? 'wp-fargate-rds';
    final dbName = config.get('dbName') ?? 'wordpress';
    final dbUser = config.get('dbUser') ?? 'admin';

    final configuredDbPassword = config.get('dbPassword');
    final dbPassword = configuredDbPassword != null
        ? configuredDbPassword.output()
        : random.index.RandomPassword(
            'dbPassword',
            args: random.index.RandomPasswordArgs(
              length: 16.output(),
              special: true.output(),
              overrideSpecial: '_%'.output(),
            ),
          ).result;

    final vpc = aws.ec2.Vpc(
      '${serviceName}-vpc',
      args: aws.ec2.VpcArgs(
        cidrBlock: '10.100.0.0/16'.input(),
        instanceTenancy: 'default'.input(),
        enableDnsHostnames: true.input(),
        enableDnsSupport: true.input(),
        tags: {'Name': '${serviceName}-vpc'}.input(),
      ),
    );

    final igw = aws.ec2.InternetGateway(
      '${serviceName}-igw',
      args: aws.ec2.InternetGatewayArgs(
        vpcId: vpc.id,
        tags: {'Name': '${serviceName}-igw'}.input(),
      ),
    );

    final routeTable = aws.ec2.RouteTable(
      '${serviceName}-rt',
      args: aws.ec2.RouteTableArgs(
        vpcId: vpc.id,
        routes: [
          aws.ec2.RouteTableRoute(cidrBlock: '0.0.0.0/0'.input(), gatewayId: igw.id),
        ].input(),
        tags: {'Name': '${serviceName}-rt'}.input(),
      ),
    );

    final availabilityZones = pulumi.output(
      aws.index.getAvailabilityZones(
        aws.index.GetAvailabilityZonesArgs(state: 'available'.input()),
      ),
    );

    final subnet0 = aws.ec2.Subnet(
      '${serviceName}-subnet-0',
      args: aws.ec2.SubnetArgs(
        vpcId: vpc.id,
        mapPublicIpOnLaunch: true.input(),
        cidrBlock: '10.100.0.0/24'.input(),
        availabilityZone: availabilityZones.apply((azs) => azs.names[0]),
        tags: {'Name': '${serviceName}-subnet-0'}.input(),
      ),
    );

    final subnet1 = aws.ec2.Subnet(
      '${serviceName}-subnet-1',
      args: aws.ec2.SubnetArgs(
        vpcId: vpc.id,
        mapPublicIpOnLaunch: true.input(),
        cidrBlock: '10.100.1.0/24'.input(),
        availabilityZone: availabilityZones.apply((azs) => azs.names[1]),
        tags: {'Name': '${serviceName}-subnet-1'}.input(),
      ),
    );

    aws.ec2.RouteTableAssociation(
      '${serviceName}-rta-0',
      args: aws.ec2.RouteTableAssociationArgs(
        routeTableId: routeTable.id,
        subnetId: subnet0.id,
      ),
    );

    aws.ec2.RouteTableAssociation(
      '${serviceName}-rta-1',
      args: aws.ec2.RouteTableAssociationArgs(
        routeTableId: routeTable.id,
        subnetId: subnet1.id,
      ),
    );

    final rdsSecurityGroup = aws.ec2.SecurityGroup(
      '${serviceName}-rds-sg',
      args: aws.ec2.SecurityGroupArgs(
        vpcId: vpc.id,
        description: 'Allow DB access'.input(),
        ingress: [
          aws.ec2.SecurityGroupIngress(
            cidrBlocks: ['0.0.0.0/0'].input(),
            fromPort: 3306.input(),
            toPort: 3306.input(),
            protocol: 'tcp'.input(),
            description: 'Allow MySQL access'.input(),
          ),
        ].input(),
        egress: [
          aws.ec2.SecurityGroupEgress(
            cidrBlocks: ['0.0.0.0/0'].input(),
            fromPort: 0.input(),
            toPort: 0.input(),
            protocol: '-1'.input(),
          ),
        ].input(),
        tags: {'Name': '${serviceName}-rds-sg'}.input(),
      ),
    );

    final feSecurityGroup = aws.ec2.SecurityGroup(
      '${serviceName}-fe-sg',
      args: aws.ec2.SecurityGroupArgs(
        vpcId: vpc.id,
        description: 'Allows all HTTP(S) traffic'.input(),
        ingress: [
          aws.ec2.SecurityGroupIngress(
            cidrBlocks: ['0.0.0.0/0'].input(),
            fromPort: 80.input(),
            toPort: 80.input(),
            protocol: 'tcp'.input(),
            description: 'Allow HTTP'.input(),
          ),
          aws.ec2.SecurityGroupIngress(
            cidrBlocks: ['0.0.0.0/0'].input(),
            fromPort: 443.input(),
            toPort: 443.input(),
            protocol: 'tcp'.input(),
            description: 'Allow HTTPS'.input(),
          ),
        ].input(),
        egress: [
          aws.ec2.SecurityGroupEgress(
            cidrBlocks: ['0.0.0.0/0'].input(),
            fromPort: 0.input(),
            toPort: 0.input(),
            protocol: '-1'.input(),
          ),
        ].input(),
        tags: {'Name': '${serviceName}-fe-sg'}.input(),
      ),
    );

    final subnetIds = pulumi.InputList<String>([subnet0.id, subnet1.id]);

    final dbSubnetGroup = aws.rds.SubnetGroup(
      '${serviceName}-db-sng',
      args: aws.rds.SubnetGroupArgs(
        subnetIds: subnetIds,
        tags: {'Name': '${serviceName}-db-sng'}.input(),
      ),
    );

    final db = aws.rds.Instance(
      '${serviceName}-db',
      args: aws.rds.InstanceArgs(
        dbName: dbName.input(),
        username: dbUser.input(),
        password: dbPassword,
        vpcSecurityGroupIds: pulumi.InputList<String>([rdsSecurityGroup.id]),
        dbSubnetGroupName: dbSubnetGroup.name,
        allocatedStorage: 20.input(),
        engine: 'mysql'.input(),
        engineVersion: '5.7'.input(),
        instanceClass: 'db.t3.micro'.input(),
        storageType: 'gp2'.input(),
        skipFinalSnapshot: true.input(),
        publiclyAccessible: false.input(),
      ),
    );

    final cluster = aws.ecs.Cluster('${serviceName}-ecs');

    final alb = aws.lb.LoadBalancer(
      '${serviceName}-alb',
      args: aws.lb.LoadBalancerArgs(
        loadBalancerType: 'application'.input(),
        securityGroups: pulumi.InputList<String>([feSecurityGroup.id]),
        subnets: subnetIds,
      ),
    );

    final targetGroup = aws.lb.TargetGroup(
      '${serviceName}-app-tg',
      args: aws.lb.TargetGroupArgs(
        port: 80.input(),
        protocol: 'HTTP'.input(),
        targetType: 'ip'.input(),
        vpcId: vpc.id,
        healthCheck: aws.lb.TargetGroupHealthCheck(
          healthyThreshold: 2.input(),
          interval: 5.input(),
          timeout: 4.input(),
          protocol: 'HTTP'.input(),
          matcher: '200-399'.input(),
        ).input(),
      ),
    );

    final listener = aws.lb.Listener(
      '${serviceName}-listener',
      args: aws.lb.ListenerArgs(
        loadBalancerArn: alb.arn,
        port: 80.input(),
        defaultActions: [
          aws.lb.ListenerDefaultAction(
            type: 'forward'.input(),
            targetGroupArn: targetGroup.arn,
          ),
        ].input(),
      ),
    );

    final taskRole = aws.iam.Role(
      '${serviceName}-task-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2008-10-17',
          'Statement': [
            {
              'Sid': '',
              'Effect': 'Allow',
              'Principal': {'Service': 'ecs-tasks.amazonaws.com'},
              'Action': 'sts:AssumeRole',
            },
          ],
        }).input(),
      ),
    );

    aws.iam.RolePolicyAttachment(
      '${serviceName}-task-policy',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: taskRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy'
                .input(),
      ),
    );

    final containerName = '${serviceName}-app-container';
    final containerDefinitions = pulumi.Output.tuple(db.address, dbPassword).apply<String>((values) {
      final dbHost = values.$1;
      final dbPass = values.$2;
      return jsonEncode([
        {
          'name': containerName,
          'image': 'wordpress',
          'portMappings': [
            {'containerPort': 80, 'hostPort': 80, 'protocol': 'tcp'},
          ],
          'environment': [
            {'name': 'WORDPRESS_DB_HOST', 'value': '$dbHost:3306'},
            {'name': 'WORDPRESS_DB_NAME', 'value': dbName},
            {'name': 'WORDPRESS_DB_USER', 'value': dbUser},
            {'name': 'WORDPRESS_DB_PASSWORD', 'value': dbPass},
          ],
        },
      ]);
    });

    final taskDefinition = aws.ecs.TaskDefinition(
      '${serviceName}-task',
      args: aws.ecs.TaskDefinitionArgs(
        family: '${serviceName}-task-definition'.input(),
        cpu: '256'.input(),
        memory: '512'.input(),
        networkMode: 'awsvpc'.input(),
        requiresCompatibilities: ['FARGATE'].input(),
        executionRoleArn: taskRole.arn,
        containerDefinitions: containerDefinitions,
      ),
    );

    aws.ecs.Service(
      '${serviceName}-svc',
      args: aws.ecs.ServiceArgs(
        cluster: cluster.arn,
        desiredCount: 1.input(),
        launchType: 'FARGATE'.input(),
        taskDefinition: taskDefinition.arn,
        networkConfiguration: aws.ecs.ServiceNetworkConfiguration(
          assignPublicIp: true.input(),
          subnets: subnetIds,
          securityGroups: pulumi.InputList<String>([feSecurityGroup.id]),
        ).input(),
        loadBalancers: [
          aws.ecs.ServiceLoadBalancer(
            targetGroupArn: targetGroup.arn,
            containerName: containerName.input(),
            containerPort: 80.input(),
          ),
        ].input(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [listener]),
    );

    webServiceUrl = alb.dnsName.apply((dns) => 'http://$dns');
    ecsClusterName = cluster.name;
    databaseEndpoint = db.address;
    databaseUserName = db.username.output();
    databasePassword = dbPassword;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('webServiceUrl', webServiceUrl),
      pulumi.OutputProperty('ecsClusterName', ecsClusterName),
      pulumi.OutputProperty('databaseEndpoint', databaseEndpoint),
      pulumi.OutputProperty('databaseUserName', databaseUserName),
      pulumi.OutputProperty('databasePassword', databasePassword),
    ];
  }
}
