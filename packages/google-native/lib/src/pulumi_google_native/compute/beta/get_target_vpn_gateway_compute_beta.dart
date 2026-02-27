import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_target_vpn_gateway_compute_beta_args.dart';
import 'get_target_vpn_gateway_compute_beta_result.dart';

/// Returns the specified target VPN gateway.
Future<GetTargetVpnGatewayComputeBetaResult> getTargetVpnGatewayComputeBeta(
  GetTargetVpnGatewayComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getTargetVpnGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetVpnGatewayComputeBetaResult.fromMap(result);
}
