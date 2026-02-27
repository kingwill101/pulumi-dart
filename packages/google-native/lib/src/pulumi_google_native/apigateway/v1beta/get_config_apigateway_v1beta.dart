import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_config_apigateway_v1beta_args.dart';
import 'get_config_apigateway_v1beta_result.dart';

/// Gets details of a single ApiConfig.
Future<GetConfigApigatewayV1betaResult> getConfigApigatewayV1beta(
  GetConfigApigatewayV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigateway/v1beta:getConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigApigatewayV1betaResult.fromMap(result);
}
