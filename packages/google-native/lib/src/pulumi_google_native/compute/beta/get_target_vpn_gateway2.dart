import 'package:pulumi/pulumi.dart';
import 'get_target_vpn_gateway_args2.dart';
import 'get_target_vpn_gateway_result2.dart';

/// Returns the specified target VPN gateway.
Future<GetTargetVpnGatewayResult2> getTargetVpnGateway2(
  GetTargetVpnGatewayArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getTargetVpnGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTargetVpnGatewayResult2.fromMap(result);
}
