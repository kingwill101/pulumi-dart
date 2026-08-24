import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_dart_faas/pulumi_dart_faas.dart' as faas;

class ZipS3Stack extends pulumi.Stack {
  late final pulumi.Output<String?> functionUrl;
  late final pulumi.Output<String> functionArn;

  ZipS3Stack() {
    final config = pulumi.Config();
    final artifactBucket = config.require('artifactBucket');
    final artifactKey = config.require('artifactKey');
    final artifactObjectVersion = config.get('artifactObjectVersion');
    final sourceCodeHash = config.get('sourceCodeHash');

    final fn = faas.AwsLambdaDartFunction(
      'zipfn',
      args: faas.DartFunctionArgs(
        source: faas.DartFunctionSource.awsS3(
          bucket: artifactBucket.input(),
          key: artifactKey.input(),
          objectVersion: artifactObjectVersion?.input(),
          sourceCodeHash: sourceCodeHash?.input(),
        ),
      ),
    );

    functionUrl = fn.functionUrl;
    functionArn = fn.functionArn;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('functionUrl', functionUrl),
      pulumi.OutputProperty('functionArn', functionArn),
    ];
  }
}
