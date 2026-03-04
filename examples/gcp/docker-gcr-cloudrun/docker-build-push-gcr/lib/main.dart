import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_docker/pulumi_docker.dart' as docker;

class DockerBuildPushStack extends pulumi.Stack {
  late final pulumi.Output<String> digest;

  DockerBuildPushStack() {
    final config = pulumi.Config('gcp');
    final project = config.require('project');

    const imageName = 'ruby-app';

    final image = docker.index.Image(
      imageName,
      args: docker.index.ImageArgs(
        imageName: 'gcr.io/$project/$imageName:latest'.output(),
        build: docker.index
            .DockerBuild(
              context: './app'.output(),
              platform: 'linux/amd64'.output(),
            )
            .output(),
      ),
    );

    digest = image.repoDigest;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('digest', digest)];
  }
}
