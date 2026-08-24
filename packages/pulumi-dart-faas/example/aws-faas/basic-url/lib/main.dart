import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_dart_faas/pulumi_dart_faas.dart' as faas;

class BasicUrlStack extends pulumi.Stack {
  late final pulumi.Output<String?> functionUrl;
  late final pulumi.Output<String> functionArn;

  BasicUrlStack() {
    final fn = faas.AwsLambdaDartFunction(
      'hello',
      args: faas.DartFunctionArgs(
        source: faas.DartFunctionSource.image(context: './app'.input()),
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
