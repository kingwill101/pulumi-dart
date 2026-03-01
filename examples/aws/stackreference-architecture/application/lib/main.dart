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
        context: '../../../aws-ts-stackreference-architecture/application/src/backend',
      ),
    );

    final vpc = aws.ec2.Vpc.get('app-service-vpc', appVpcId);

    final albSg = aws.ec2.SecurityGroup(
      'app-service-alb-sg',
      args: aws.ec2.SecurityGroupArgs(vpcId: vpc.id),
    );

    final appAlb = aws.lb.LoadBalancer(
      'app-service-alb',
      args: aws.lb.LoadBalancerArgs(
        subnets: appPublicSubnetIds,
        securityGroups: pulumi.Output
            .all<String>([albSg.id])
            .apply<List<String>>((ids) => ids),
        tags: {...baseTags, 'Name': '${baseTags['Project']} ALB'},
      ),
    );

    final targetGroup = aws.lb.TargetGroup(
      'app-service-tg',
      args: aws.lb.TargetGroupArgs(
        port: 80,
        protocol: 'HTTP',
        targetType: 'ip',
        vpcId: vpc.id,
      ),
    );

    final listener = aws.lb.Listener(
      'app-service-alb-listener',
      args: aws.lb.ListenerArgs(
        loadBalancerArn: appAlb.arn,
        port: 80,
        defaultActions: [
          aws.lb.ListenerDefaultAction(
            type: 'forward',
            targetGroupArn: targetGroup.arn,
          ),
        ],
      ),
    );

    final cluster = aws.ecs.Cluster(
      'app-cluster',
      args: aws.ecs.ClusterArgs(
        tags: {...baseTags, 'Name': '${baseTags['Project']} Cluster'},
      ),
    );

    final appSg = aws.ec2.SecurityGroup(
      'app-service-sg',
      args: aws.ec2.SecurityGroupArgs(
        vpcId: vpc.id,
        ingress: [
          aws.ec2.SecurityGroupIngress(
            fromPort: 80,
            toPort: 80,
            protocol: 'tcp',
            cidrBlocks: ['0.0.0.0/0'],
          ),
        ],
        egress: [
          aws.ec2.SecurityGroupEgress(
            fromPort: 0,
            toPort: 0,
            protocol: '-1',
            cidrBlocks: ['0.0.0.0/0'],
          ),
        ],
      ),
    );

    awsx.ecs.FargateService(
      'app-service',
      args: awsx.ecs.FargateServiceArgs(
        cluster: cluster.arn,
        assignPublicIp: false,
        desiredCount: 1,
        networkConfiguration: aws.ecs.ServiceNetworkConfiguration(
          subnets: appPrivateSubnetIds,
          securityGroups: pulumi.Output
              .all<String>([appSg.id])
              .apply<List<String>>((ids) => ids),
        ),
        taskDefinitionArgs: awsx.ecs.FargateServiceTaskDefinition(
          container: awsx.ecs.TaskDefinitionContainerDefinition(
            name: 'app',
            image: image.imageUri,
            portMappings: [
              awsx.ecs.TaskDefinitionPortMapping(
                containerPort: 80,
                targetGroup: targetGroup,
              ),
            ],
            environment: [
              awsx.ecs.TaskDefinitionKeyValuePair(name: 'DB_HOST', value: dbHost),
              awsx.ecs.TaskDefinitionKeyValuePair(
                name: 'DB_USERNAME',
                value: dbUsername,
              ),
              awsx.ecs.TaskDefinitionKeyValuePair(
                name: 'DB_PASSWORD',
                value: dbPassword,
              ),
              awsx.ecs.TaskDefinitionKeyValuePair(name: 'DB_PORT', value: dbPort),
              awsx.ecs.TaskDefinitionKeyValuePair(name: 'DB_NAME', value: dbName),
            ],
          ),
        ),
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
