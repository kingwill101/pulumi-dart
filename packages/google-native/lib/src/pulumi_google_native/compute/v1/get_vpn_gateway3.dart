import 'package:pulumi/pulumi.dart' hide Config;
import 'get_vpn_gateway_args3.dart';
import 'get_vpn_gateway_result3.dart';

/// Returns the specified VPN gateway.
Future<GetVpnGatewayResult3> getVpnGateway3(
  GetVpnGatewayArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getVpnGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpnGatewayResult3.fromMap(result);
}
