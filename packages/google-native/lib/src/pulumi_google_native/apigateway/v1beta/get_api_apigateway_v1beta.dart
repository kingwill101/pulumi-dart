import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_apigateway_v1beta_args.dart';
import 'get_api_apigateway_v1beta_result.dart';

/// Gets details of a single Api.
Future<GetApiApigatewayV1betaResult> getApiApigatewayV1beta(
  GetApiApigatewayV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigateway/v1beta:getApi',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiApigatewayV1betaResult.fromMap(result);
}
