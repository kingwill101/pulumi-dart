import 'package:pulumi/pulumi.dart';
import 'get_vpn_tunnel_args3.dart';
import 'get_vpn_tunnel_result3.dart';

/// Returns the specified VpnTunnel resource.
Future<GetVpnTunnelResult3> getVpnTunnel3(
  GetVpnTunnelArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getVpnTunnel',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpnTunnelResult3.fromMap(result);
}
