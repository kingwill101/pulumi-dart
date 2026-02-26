import 'package:pulumi/pulumi.dart';
import 'get_target_vpn_gateway_args.dart';
import 'get_target_vpn_gateway_result.dart';

/// Returns the specified target VPN gateway.
Future<GetTargetVpnGatewayResult> getTargetVpnGateway(
  GetTargetVpnGatewayArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getTargetVpnGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTargetVpnGatewayResult.fromMap(result);
}
