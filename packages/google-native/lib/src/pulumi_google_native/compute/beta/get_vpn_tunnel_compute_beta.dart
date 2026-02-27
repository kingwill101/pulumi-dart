import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpn_tunnel_compute_beta_args.dart';
import 'get_vpn_tunnel_compute_beta_result.dart';

/// Returns the specified VpnTunnel resource.
Future<GetVpnTunnelComputeBetaResult> getVpnTunnelComputeBeta(
  GetVpnTunnelComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getVpnTunnel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpnTunnelComputeBetaResult.fromMap(result);
}
