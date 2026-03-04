import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;

class TsEcrRepoStack extends pulumi.Stack {
  TsEcrRepoStack() {
    awsx.ecr.Repository(
      'repository',
      args: awsx.ecr.RepositoryArgs(forceDelete: true.input()),
    );
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => [];
}
