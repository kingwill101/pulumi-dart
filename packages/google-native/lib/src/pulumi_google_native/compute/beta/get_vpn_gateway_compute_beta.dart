import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpn_gateway_compute_beta_args.dart';
import 'get_vpn_gateway_compute_beta_result.dart';

/// Returns the specified VPN gateway.
Future<GetVpnGatewayComputeBetaResult> getVpnGatewayComputeBeta(
  GetVpnGatewayComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getVpnGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpnGatewayComputeBetaResult.fromMap(result);
}
