import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;

class TsEcrDockerfileStack extends pulumi.Stack {
  late final pulumi.Output<String?> image;

  TsEcrDockerfileStack() {
    final repository = awsx.ecr.Repository(
      'repository',
      args: awsx.ecr.RepositoryArgs(forceDelete: true.input()),
    );

    image = awsx.ecr
        .Image(
          'image',
          args: awsx.ecr.ImageArgs(
            repositoryUrl: repository.url.apply<String>((url) => url ?? ''),
            context: './app'.input(),
            dockerfile: './docker/Dockerfile'.input(),
          ),
        )
        .imageUri;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('image', image)];
  }
}
