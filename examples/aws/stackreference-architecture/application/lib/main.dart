import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;

class ExampleStack extends pulumi.Stack {
  late final pulumi.Output<String> albAddress;

  ExampleStack() {
    final config = pulumi.Config();
    final networkingStack = pulumi.StackReference(config.require('networkingStack'));
    final databaseStack = pulumi.StackReference(config.require('databaseStack'));

    final appVpcId = networkingStack
        .requireOutput(pulumi.Input.fromValue('appVpcId'))
        .apply<String>((value) => value as String);
    final appPublicSubnetIds = networkingStack
        .requireOutput(pulumi.Input.fromValue('appVpcPublicSubnetIds'))
        .apply<List<String>>((value) => (value as List).cast<String>());
    final appPrivateSubnetIds = networkingStack
        .requireOutput(pulumi.Input.fromValue('appVpcPrivateSubnetIds'))
        .apply<List<String>>((value) => (value as List).cast<String>());

    final dbName = databaseStack
        .requireOutput(pulumi.Input.fromValue('dbName'))
        .apply<String>((value) => value as String);
    final dbUsername = databaseStack
        .requireOutput(pulumi.Input.fromValue('dbUsername'))
        .apply<String>((value) => value as String);
    final dbPassword = databaseStack
        .requireOutput(pulumi.Input.fromValue('dbPassword'))
        .apply<String>((value) => value as String);
    final dbPort = databaseStack
        .requireOutput(pulumi.Input.fromValue('dbPort'))
        .apply<String>((value) => value as String);
    final dbHost = databaseStack
        .requireOutput(pulumi.Input.fromValue('dbAddress'))
        .apply<String>((value) => value as String);

    final baseTags = <String, String>{
      'Project': 'Pulumi Demo',
      'PulumiStack': pulumi.Deployment.instance.stackName,
    };

    final repo = awsx.ecr.Repository('app-repo');
    final image = awsx.ecr.Image(
      'app-image',
      args: awsx.ecr.ImageArgs(
        repositoryUrl: repo.url,
        context: '../../../aws-ts-stackreference-architecture/application/src/backend'
            .input(),
      ),
    );

    final vpcId = appVpcId;

    final albSg = aws.ec2.SecurityGroup(
      'app-service-alb-sg',
      args: aws.ec2.SecurityGroupArgs(vpcId: vpcId),
    );

    final appAlb = aws.lb.LoadBalancer(
      'app-service-alb',
      args: aws.lb.LoadBalancerArgs(
        subnets: appPublicSubnetIds,
        securityGroups: pulumi.Output
            .all<String>([albSg.id])
            .apply<List<String>>((ids) => ids)
            .input(),
        tags: {...baseTags, 'Name': '${baseTags['Project']} ALB'}.input(),
      ),
    );

    final targetGroup = aws.lb.TargetGroup(
      'app-service-tg',
      args: aws.lb.TargetGroupArgs(
        port: 80.input(),
        protocol: 'HTTP'.input(),
        targetType: 'ip'.input(),
        vpcId: vpcId,
      ),
    );

    final listener = aws.lb.Listener(
      'app-service-alb-listener',
      args: aws.lb.ListenerArgs(
        loadBalancerArn: appAlb.arn,
        port: 80.input(),
        defaultActions: [
          aws.lb.ListenerDefaultAction(
            type: 'forward'.input(),
            targetGroupArn: targetGroup.arn,
          ),
        ].input(),
      ),
    );

    final cluster = aws.ecs.Cluster(
      'app-cluster',
      args: aws.ecs.ClusterArgs(
        tags: {...baseTags, 'Name': '${baseTags['Project']} Cluster'}.input(),
      ),
    );

    final appSg = aws.ec2.SecurityGroup(
      'app-service-sg',
      args: aws.ec2.SecurityGroupArgs(
        vpcId: vpcId,
        ingress: [
          aws.ec2.SecurityGroupIngress(
            fromPort: 80.input(),
            toPort: 80.input(),
            protocol: 'tcp'.input(),
            cidrBlocks: ['0.0.0.0/0'].input(),
          ),
        ].input(),
        egress: [
          aws.ec2.SecurityGroupEgress(
            fromPort: 0.input(),
            toPort: 0.input(),
            protocol: '-1'.input(),
            cidrBlocks: ['0.0.0.0/0'].input(),
          ),
        ].input(),
      ),
    );

    awsx.ecs.FargateService(
      'app-service',
      args: awsx.ecs.FargateServiceArgs(
        cluster: cluster.arn,
        assignPublicIp: false.input(),
        desiredCount: 1.input(),
        networkConfiguration: aws.ecs.ServiceNetworkConfiguration(
          subnets: appPrivateSubnetIds,
          securityGroups: pulumi.Output
              .all<String>([appSg.id])
              .apply<List<String>>((ids) => ids)
              .input(),
        ).input(),
        taskDefinitionArgs: awsx.ecs.FargateServiceTaskDefinition(
          container: awsx.ecs.TaskDefinitionContainerDefinition(
            name: 'app'.input(),
            image: image.imageUri,
            portMappings: [
              awsx.ecs.TaskDefinitionPortMapping(
                containerPort: 80.input(),
                targetGroup: targetGroup.input(),
              ),
            ].input(),
            environment: [
              awsx.ecs.TaskDefinitionKeyValuePair(
                name: 'DB_HOST'.input(),
                value: dbHost,
              ),
              awsx.ecs.TaskDefinitionKeyValuePair(
                name: 'DB_USERNAME'.input(),
                value: dbUsername,
              ),
              awsx.ecs.TaskDefinitionKeyValuePair(
                name: 'DB_PASSWORD'.input(),
                value: dbPassword,
              ),
              awsx.ecs.TaskDefinitionKeyValuePair(
                name: 'DB_PORT'.input(),
                value: dbPort,
              ),
              awsx.ecs.TaskDefinitionKeyValuePair(
                name: 'DB_NAME'.input(),
                value: dbName,
              ),
            ].input(),
          ).input(),
        ).input(),
      ),
      options: pulumi.ComponentResourceOptions(dependsOn: [listener]),
    );

    albAddress = appAlb.dnsName;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('albAddress', albAddress)];
  }
}
