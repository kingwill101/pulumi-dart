import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;

class TsEcrSimpleStack extends pulumi.Stack {
  late final pulumi.Output<String?> repositoryName;
  late final pulumi.Output<String?> image;

  TsEcrSimpleStack() {
    final repository = awsx.ecr.Repository(
      'repository',
      args: awsx.ecr.RepositoryArgs(forceDelete: true.input()),
    );

    repositoryName = repository.repository.apply<String?>((repo) => repo?.name);
    image = awsx.ecr
        .Image(
          'image',
          args: awsx.ecr.ImageArgs(
            repositoryUrl: repository.url.apply<String>((url) => url ?? ''),
            context: './app'.input(),
          ),
        )
        .imageUri;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('repositoryName', repositoryName),
      pulumi.OutputProperty('image', image),
    ];
  }
}
