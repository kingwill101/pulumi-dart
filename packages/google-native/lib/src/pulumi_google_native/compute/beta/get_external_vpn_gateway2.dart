import 'package:pulumi/pulumi.dart' hide Config;
import 'get_external_vpn_gateway_args2.dart';
import 'get_external_vpn_gateway_result2.dart';

/// Returns the specified externalVpnGateway. Get a list of available externalVpnGateways by making a list() request.
Future<GetExternalVpnGatewayResult2> getExternalVpnGateway2(
  GetExternalVpnGatewayArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getExternalVpnGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetExternalVpnGatewayResult2.fromMap(result);
}
