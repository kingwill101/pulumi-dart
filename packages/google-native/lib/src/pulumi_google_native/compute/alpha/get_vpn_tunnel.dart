import 'package:pulumi/pulumi.dart' hide Config;
import 'get_vpn_tunnel_args.dart';
import 'get_vpn_tunnel_result.dart';

/// Returns the specified VpnTunnel resource.
Future<GetVpnTunnelResult> getVpnTunnel(
  GetVpnTunnelArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getVpnTunnel',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpnTunnelResult.fromMap(result);
}
