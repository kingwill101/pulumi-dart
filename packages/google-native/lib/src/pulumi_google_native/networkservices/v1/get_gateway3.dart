import 'package:pulumi/pulumi.dart' hide Config;
import 'get_gateway_args3.dart';
import 'get_gateway_result3.dart';

/// Gets details of a single Gateway.
Future<GetGatewayResult3> getGateway3(
  GetGatewayArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGatewayResult3.fromMap(result);
}
