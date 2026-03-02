import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;

class ExampleStack extends pulumi.Stack {
  late final pulumi.Output<String> frontendURL;

  ExampleStack() {
    final cluster = aws.ecs.Cluster('cluster');

    final loadbalancer = awsx.lb.ApplicationLoadBalancer('loadbalancer');

    final repo = awsx.ecr.Repository(
      'repo',
      args: awsx.ecr.RepositoryArgs(forceDelete: true.output()),
    );

    final image = awsx.ecr.Image(
      'image',
      args: awsx.ecr.ImageArgs(
        repositoryUrl: repo.url,
        context: './app'.output(),
        platform: 'linux/amd64'.output(),
      ),
    );

    awsx.ecs.FargateService(
      'service',
      args: awsx.ecs.FargateServiceArgs(
        cluster: cluster.arn,
        assignPublicIp: true.input(),
        taskDefinitionArgs:
            pulumi.Output.tuple(
              image.imageUri,
              loadbalancer.defaultTargetGroup,
            ).apply(
              (values) => awsx.ecs.FargateServiceTaskDefinition(
                container: awsx.ecs
                    .TaskDefinitionContainerDefinition(
                      name: 'service-container'.input(),
                      image: values.$1.input(),
                      cpu: 128.input(),
                      memory: 512.input(),
                      essential: true.input(),
                      portMappings: [
                        awsx.ecs.TaskDefinitionPortMapping(
                          containerPort: 80.input(),
                          targetGroup: values.$2.input(),
                        ),
                      ].input(),
                    )
                    .input(),
              ),
            ),
      ),
    );

    frontendURL = loadbalancer.loadBalancer.apply(
      (lb) => 'http://${lb.dnsName}',
    );
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('frontendURL', frontendURL)];
  }
}

Future<void> main() async {
  await pulumi.Deployment.run(() => ExampleStack());
}
