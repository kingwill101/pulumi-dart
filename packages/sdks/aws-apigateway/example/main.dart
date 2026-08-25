import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_aws_apigateway/index.dart'
    as pulumi_aws_apigateway_index;

class AwsApigatewayStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  AwsApigatewayStack() {
    final api = pulumi_aws_apigateway_index.RestAPI(
      'api',
      args: pulumi_aws_apigateway_index.RestAPIArgs(
        description: pulumi.Input.asInput(
          'API generated from a Pulumi Dart program',
        ),
      ),
    );

    _outputProperties = [
      pulumi.OutputProperty(
        'url',
        pulumi.output(api.url).apply<Object?>((value) => value),
      ),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => AwsApigatewayStack());
}
