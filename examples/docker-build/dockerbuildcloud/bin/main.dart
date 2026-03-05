import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_docker_build/pulumi_docker_build.dart' as docker_build;

class ExampleStack extends pulumi.Stack {
  late final pulumi.Output<String> imageDigest;

  ExampleStack() {
    final config = pulumi.Config();
    final builder = config.require('builder');

    final image = docker_build.index.Image(
      'image',
      args: docker_build.index.ImageArgs(
        exec: true.input(),
        builder: docker_build.index
            .BuilderConfig(name: builder.input())
            .input(),
        push: false.output(),
        exports: [
          docker_build.index.Export(cacheonly: <String, dynamic>{}.input()),
        ].input(),
        tags: ['nginx:latest'].input(),
        context: docker_build.index
            .BuildContext(location: 'app'.input())
            .input(),
      ),
    );

    imageDigest = image.digest;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('imageDigest', imageDigest)];
  }
}

Future<void> main() async {
  await pulumi.Deployment.run(() => ExampleStack());
}
