import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_target_vpn_gateway_args.dart';
import 'get_target_vpn_gateway_result.dart';

/// Returns the specified target VPN gateway.
Future<GetTargetVpnGatewayResult> getTargetVpnGateway(
  GetTargetVpnGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getTargetVpnGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetVpnGatewayResult.fromMap(result);
}
