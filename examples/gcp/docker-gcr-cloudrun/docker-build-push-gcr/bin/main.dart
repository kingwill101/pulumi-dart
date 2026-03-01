// ignore_for_file: unused_import
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_docker/pulumi_docker.dart' as docker;
import 'package:pulumi_gcp/pulumi_gcp.dart' as gcp;

class DockerBuildPushStack extends pulumi.Stack {
  DockerBuildPushStack() {
    final config = pulumi.Config('gcp');
    final project = config.require('project');

    const imageName = 'ruby-app';

    final myImage = docker.Image(
      imageName,
      args: docker.ImageArgs(
        imageName: 'gcr.io/$project/$imageName:latest',
        build: docker.DockerBuild(context: './app', platform: 'linux/amd64'),
      ),
    );

    registerOutputs({'digest': myImage.repoDigest});
  }
}

Future<void> main() async {
  await pulumi.Deployment.run(() => DockerBuildPushStack());
}
