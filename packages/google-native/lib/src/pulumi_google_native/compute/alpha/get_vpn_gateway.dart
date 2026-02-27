import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpn_gateway_args.dart';
import 'get_vpn_gateway_result.dart';

/// Returns the specified VPN gateway.
Future<GetVpnGatewayResult> getVpnGateway(
  GetVpnGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getVpnGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpnGatewayResult.fromMap(result);
}
