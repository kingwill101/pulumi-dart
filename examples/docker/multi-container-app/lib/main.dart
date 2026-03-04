import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_docker/index.dart' as docker;

class MultiContainerAppStack extends pulumi.Stack {
  late final pulumi.Output<String> url;

  MultiContainerAppStack() {
    const redisPort = 6379;
    const appPort = 3000;
    const redisHost = 'redisdb';

    final network = docker.Network(
      'network',
      args: docker.NetworkArgs(name: 'services'.input()),
    );

    final redisImage = docker.RemoteImage(
      'redisImage',
      args: docker.RemoteImageArgs(
        name: 'redis:6.2'.input(),
        keepLocally: true.input(),
      ),
    );

    final redisContainer = docker.Container(
      'redisContainer',
      args: docker.ContainerArgs(
        image: redisImage.imageId,
        ports: [
          docker.ContainerPort(
            internal: redisPort.input(),
            external: redisPort.input(),
          ),
        ].input(),
        networksAdvanced: [
          docker.ContainerNetworksAdvanced(
            name: network.name,
            aliases: [redisHost].input(),
          ),
        ].input(),
      ),
    );

    final appImage = docker.Image(
      'appImage',
      args: docker.ImageArgs(
        build: docker.DockerBuild(context: './app'.input()).input(),
        imageName: 'app'.input(),
        skipPush: true.input(),
      ),
    );

    docker.Container(
      'appContainer',
      args: docker.ContainerArgs(
        image: appImage.baseImageName,
        ports: [
          docker.ContainerPort(
            internal: appPort.input(),
            external: appPort.input(),
          ),
        ].input(),
        envs: ['REDIS_HOST=$redisHost', 'REDIS_PORT=$redisPort'].input(),
        networksAdvanced: [
          docker.ContainerNetworksAdvanced(name: network.name),
        ].input(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [redisContainer]),
    );

    url = 'http://localhost:$appPort'.output();
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('url', url)];
  }
}
