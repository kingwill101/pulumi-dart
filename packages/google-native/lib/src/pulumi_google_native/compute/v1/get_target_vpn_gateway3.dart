import 'package:pulumi/pulumi.dart';
import 'get_target_vpn_gateway_args3.dart';
import 'get_target_vpn_gateway_result3.dart';

/// Returns the specified target VPN gateway.
Future<GetTargetVpnGatewayResult3> getTargetVpnGateway3(
  GetTargetVpnGatewayArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getTargetVpnGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTargetVpnGatewayResult3.fromMap(result);
}
