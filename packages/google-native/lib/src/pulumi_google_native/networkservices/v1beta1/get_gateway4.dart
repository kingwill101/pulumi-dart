import 'package:pulumi/pulumi.dart';
import 'get_gateway_args4.dart';
import 'get_gateway_result4.dart';

/// Gets details of a single Gateway.
Future<GetGatewayResult4> getGateway4(
  GetGatewayArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGatewayResult4.fromMap(result);
}
