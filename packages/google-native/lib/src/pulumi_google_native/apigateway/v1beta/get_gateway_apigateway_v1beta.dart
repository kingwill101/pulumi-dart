import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_apigateway_v1beta_args.dart';
import 'get_gateway_apigateway_v1beta_result.dart';

/// Gets details of a single Gateway.
Future<GetGatewayApigatewayV1betaResult> getGatewayApigatewayV1beta(
  GetGatewayApigatewayV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigateway/v1beta:getGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayApigatewayV1betaResult.fromMap(result);
}
