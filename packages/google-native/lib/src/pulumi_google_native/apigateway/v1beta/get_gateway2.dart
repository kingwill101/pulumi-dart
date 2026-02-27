import 'package:pulumi/pulumi.dart' hide Config;
import 'get_gateway_args2.dart';
import 'get_gateway_result2.dart';

/// Gets details of a single Gateway.
Future<GetGatewayResult2> getGateway2(
  GetGatewayArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigateway/v1beta:getGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGatewayResult2.fromMap(result);
}
