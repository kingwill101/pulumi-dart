import 'package:pulumi/pulumi.dart' hide Config;
import 'get_vpn_gateway_args2.dart';
import 'get_vpn_gateway_result2.dart';

/// Returns the specified VPN gateway.
Future<GetVpnGatewayResult2> getVpnGateway2(
  GetVpnGatewayArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getVpnGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpnGatewayResult2.fromMap(result);
}
