import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;

class VotingAppStack extends pulumi.Stack {
  late final pulumi.Output<String> frontendUrl;

  VotingAppStack() {
    final config = pulumi.Config();
    final redisPassword = config.require('redisPassword');
    const redisPort = 6379;

    final redisLB = awsx.lb.ApplicationLoadBalancer('voting-app-cache');

    awsx.ecs.FargateService(
      'voting-app-cache',
      args: awsx.ecs.FargateServiceArgs(
        taskDefinitionArgs: awsx.ecs.FargateServiceTaskDefinition(
          container: awsx.ecs.TaskDefinitionContainerDefinition(
            name: 'redis'.input(),
            image: 'redis:alpine'.input(),
            memory: 512.input(),
            portMappings: [
              awsx.ecs.TaskDefinitionPortMapping(
                containerPort: redisPort.input(),
                targetGroup: redisLB.defaultTargetGroup,
              ),
            ].input(),
            command: ['redis-server', '--requirepass', redisPassword].input(),
          ).input(),
        ).input(),
      ),
    );

    final redisEndpoint = redisLB.loadBalancer.apply((dynamic lb) => lb.dnsName);
    final redisHostPort = redisLB.defaultTargetGroup.apply((dynamic tg) => tg.port);

    final frontendLB = awsx.lb.ApplicationLoadBalancer('voting-app-frontend');

    final repo = awsx.ecr.Repository('repo');

    final image = awsx.ecr.Image(
      'voting-app-frontend',
      args: awsx.ecr.ImageArgs(
        repositoryUrl: repo.url,
        context: './frontend'.input(),
      ),
    );

    awsx.ecs.FargateService(
      'voting-app-frontend',
      args: awsx.ecs.FargateServiceArgs(
        taskDefinitionArgs: awsx.ecs.FargateServiceTaskDefinition(
          container: awsx.ecs.TaskDefinitionContainerDefinition(
            name: 'votingAppFrontend'.input(),
            image: image.imageUri,
            memory: 512.input(),
            portMappings: [
              awsx.ecs.TaskDefinitionPortMapping(
                containerPort: 80.input(),
                targetGroup: frontendLB.defaultTargetGroup,
              ),
            ].input(),
            environment: pulumi.Output.all([redisEndpoint, redisHostPort]).apply(
              (List<dynamic> values) {
                return [
                awsx.ecs.TaskDefinitionKeyValuePair(
                  name: 'REDIS'.input(),
                  value: values[0].toString().input(),
                ),
                awsx.ecs.TaskDefinitionKeyValuePair(
                  name: 'REDIS_PORT'.input(),
                  value: values[1].toString().input(),
                ),
                awsx.ecs.TaskDefinitionKeyValuePair(
                  name: 'REDIS_PWD'.input(),
                  value: redisPassword.input(),
                ),
              ];
              },
            ),
          ).input(),
        ).input(),
      ),
    );

    frontendUrl = pulumi.Output.all([
      frontendLB.loadBalancer,
      frontendLB.defaultTargetGroup,
    ]).apply<String>((List<dynamic> values) {
      final lb = values[0];
      final tg = values[1];
      return 'http://${lb.dnsName}:${tg.port}';
    });
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('frontendURL', frontendUrl)];
  }
}
