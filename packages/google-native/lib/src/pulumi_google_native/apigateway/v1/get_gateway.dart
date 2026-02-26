import 'package:pulumi/pulumi.dart';
import 'get_gateway_args.dart';
import 'get_gateway_result.dart';

/// Gets details of a single Gateway.
Future<GetGatewayResult> getGateway(
  GetGatewayArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigateway/v1:getGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGatewayResult.fromMap(result);
}
