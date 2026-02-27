import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpn_tunnel_args.dart';
import 'get_vpn_tunnel_result.dart';

/// Returns the specified VpnTunnel resource.
Future<GetVpnTunnelResult> getVpnTunnel(
  GetVpnTunnelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getVpnTunnel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpnTunnelResult.fromMap(result);
}
