import 'package:pulumi/pulumi.dart';
import 'get_vpn_tunnel_args2.dart';
import 'get_vpn_tunnel_result2.dart';

/// Returns the specified VpnTunnel resource.
Future<GetVpnTunnelResult2> getVpnTunnel2(
  GetVpnTunnelArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getVpnTunnel',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpnTunnelResult2.fromMap(result);
}
