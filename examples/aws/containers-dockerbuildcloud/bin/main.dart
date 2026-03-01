import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;
import 'package:pulumi_docker_build/pulumi_docker_build.dart' as docker_build;

class ExampleStack extends pulumi.Stack {
  late final pulumi.Output<String> url;

  ExampleStack() {
    final config = pulumi.Config();
    final builder = config.require('builder');

    final cluster = aws.ecs.Cluster('cluster');

    final loadbalancer = awsx.lb.ApplicationLoadBalancer('loadbalancer');

    final ecr = awsx.ecr.Repository(
      'repo',
      args: awsx.ecr.RepositoryArgs(forceDelete: true.output()),
    );

    final auth = pulumi.output(
      aws.ecr.getAuthorizationToken(
        aws.ecr.GetAuthorizationTokenArgs(),
      ),
    );

    final image = docker_build.index.Image(
      'image',
      args: docker_build.index.ImageArgs(
        exec: true.output(),
        builder: docker_build.index.BuilderConfig(name: builder).output(),
        cacheFrom: ecr.url.apply(
          (repositoryUrl) => [
            docker_build.index.CacheFrom(
              registry: docker_build.index.CacheFromRegistry(
                ref: '$repositoryUrl:cache',
              ),
            ),
          ],
        ),
        cacheTo: ecr.url.apply(
          (repositoryUrl) => [
            docker_build.index.CacheTo(
              registry: docker_build.index.CacheToRegistry(
                imageManifest: true,
                ociMediaTypes: true,
                ref: '$repositoryUrl:cache',
              ),
            ),
          ],
        ),
        platforms: [docker_build.index.Platform.valueLinuxAmd64].output(),
        push: true.output(),
        registries: pulumi.Output.tuple(ecr.url, auth).apply(
          (values) => [
            docker_build.index.Registry(
              address: values.$1,
              username: values.$2.userName,
              password: values.$2.password,
            ),
          ],
        ),
        tags: ecr.url.apply((repositoryUrl) => ['$repositoryUrl:latest']),
        context: docker_build.index.BuildContext(location: 'app').output(),
      ),
    );

    awsx.ecs.FargateService(
      'service',
      args: awsx.ecs.FargateServiceArgs(
        cluster: cluster.arn,
        assignPublicIp: true.output(),
        taskDefinitionArgs: pulumi.Output.tuple(
          image.ref,
          loadbalancer.defaultTargetGroup,
        ).apply(
          (values) => awsx.ecs.FargateServiceTaskDefinition(
            container: awsx.ecs.TaskDefinitionContainerDefinition(
              name: 'service-container',
              image: values.$1,
              cpu: 128,
              memory: 512,
              essential: true,
              portMappings: [
                awsx.ecs.TaskDefinitionPortMapping(
                  containerPort: 80,
                  targetGroup: values.$2,
                ),
              ],
            ),
          ),
        ),
      ),
    );

    url = loadbalancer.loadBalancer.apply((lb) => 'http://${lb.dnsName}');
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('url', url),
    ];
  }
}

Future<void> main() async {
  await pulumi.Deployment.run(() => ExampleStack());
}
