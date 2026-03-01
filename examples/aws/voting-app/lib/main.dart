import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;

Future<void> run() async {
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
        ),
      ).input(),
    ),
  );

  final redisEndpoint = redisLB.loadBalancer.apply((lb) => lb.dnsName);
  final redisHostPort = redisLB.defaultTargetGroup.apply((tg) => tg.port);

  final frontendLB = awsx.lb.ApplicationLoadBalancer('voting-app-frontend');

  final repo = awsx.ecr.Repository('repo');

  final image = awsx.ecr.Image(
    'voting-app-frontend',
    args: awsx.ecr.ImageArgs(repositoryUrl: repo.url, context: './frontend'.input()),
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
          environment: pulumi.Output.tuple(redisEndpoint, redisHostPort).apply(
            (values) => [
              awsx.ecs.TaskDefinitionKeyValuePair(
                name: 'REDIS'.input(),
                value: (values.$1 ?? '').input(),
              ),
              awsx.ecs.TaskDefinitionKeyValuePair(
                name: 'REDIS_PORT'.input(),
                value: (values.$2?.toString() ?? '').input(),
              ),
              awsx.ecs.TaskDefinitionKeyValuePair(
                name: 'REDIS_PWD'.input(),
                value: redisPassword.input(),
              ),
            ],
          ),
        ),
      ).input(),
    ),
  );

  final frontendURL = pulumi.Output.tuple(frontendLB.loadBalancer, frontendLB.defaultTargetGroup).apply<String>((values) {
    final lb = values.$1;
    final tg = values.$2;
    return 'http://${lb.dnsName ?? ''}:${tg.port}';
  });

  pulumi.export('frontendURL', frontendURL);
}
