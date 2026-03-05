import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;
import 'package:pulumi_docker_build/index.dart' as docker_build_index;
import 'package:pulumi_docker_build/pulumi_docker_build.dart' as docker_build;

class ExampleStack extends pulumi.Stack {
  late final pulumi.Output<String> url;

  ExampleStack() {
    final cluster = aws.ecs.Cluster('cluster');

    final loadbalancer = awsx.lb.ApplicationLoadBalancer('loadbalancer');

    final ecr = awsx.ecr.Repository(
      'repo',
      args: awsx.ecr.RepositoryArgs(forceDelete: true.output()),
    );

    final auth = pulumi.output(
      aws.ecr.getAuthorizationToken(aws.ecr.GetAuthorizationTokenArgs()),
    );

    final image = docker_build.index.Image(
      'image',
      args: docker_build.index.ImageArgs(
        cacheFrom: ecr.url.apply(
          (repositoryUrl) => [
            docker_build.index.CacheFrom(
              registry: docker_build.index
                  .CacheFromRegistry(ref: '$repositoryUrl:cache'.input())
                  .input(),
            ),
          ],
        ),
        cacheTo: ecr.url.apply(
          (repositoryUrl) => [
            docker_build.index.CacheTo(
              registry: docker_build.index
                  .CacheToRegistry(
                    imageManifest: true.input(),
                    ociMediaTypes: true.input(),
                    ref: '$repositoryUrl:cache'.input(),
                  )
                  .input(),
            ),
          ],
        ),
        platforms: [docker_build_index.Platform.valueLinuxAmd64].input(),
        push: true.output(),
        registries: pulumi.Output.tuple(ecr.url, auth).apply(
          (values) => [
            docker_build.index.Registry(
              address: values.$1!.input(),
              username: values.$2.userName.input(),
              password: values.$2.password.input(),
            ),
          ],
        ),
        tags: ecr.url.apply((repositoryUrl) => ['$repositoryUrl:latest']),
        context: docker_build.index
            .BuildContext(location: 'app'.input())
            .input(),
      ),
    );

    awsx.ecs.FargateService(
      'service',
      args: awsx.ecs.FargateServiceArgs(
        cluster: cluster.arn,
        assignPublicIp: true.input(),
        taskDefinitionArgs:
            pulumi.Output.tuple(
              image.ref,
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
                          targetGroup: values.$2!.input(),
                        ),
                      ].input(),
                    )
                    .input(),
              ),
            ),
      ),
    );

    url = loadbalancer.loadBalancer.apply(
      (lb) => 'http://${lb?.dnsName ?? ''}',
    );
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('url', url)];
  }
}

Future<void> main() async {
  await pulumi.Deployment.run(() => ExampleStack());
}
