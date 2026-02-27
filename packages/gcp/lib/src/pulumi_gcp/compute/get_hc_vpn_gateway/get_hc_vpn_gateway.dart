import 'package:pulumi/pulumi.dart';
import 'get_hc_vpn_gateway_args.dart';
import 'get_hc_vpn_gateway_result.dart';

/// Get a HA VPN Gateway within GCE from its name.
Future<GetHcVpnGatewayResult> getHcVpnGateway(
  GetHcVpnGatewayArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getHcVpnGateway:getHcVpnGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHcVpnGatewayResult.fromMap(result);
}
