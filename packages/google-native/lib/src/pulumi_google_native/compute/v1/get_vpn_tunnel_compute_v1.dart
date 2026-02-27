import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpn_tunnel_compute_v1_args.dart';
import 'get_vpn_tunnel_compute_v1_result.dart';

/// Returns the specified VpnTunnel resource.
Future<GetVpnTunnelComputeV1Result> getVpnTunnelComputeV1(
  GetVpnTunnelComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getVpnTunnel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpnTunnelComputeV1Result.fromMap(result);
}
