import 'package:pulumi/pulumi.dart' hide Config;
import 'get_external_vpn_gateway_args3.dart';
import 'get_external_vpn_gateway_result3.dart';

/// Returns the specified externalVpnGateway. Get a list of available externalVpnGateways by making a list() request.
Future<GetExternalVpnGatewayResult3> getExternalVpnGateway3(
  GetExternalVpnGatewayArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getExternalVpnGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetExternalVpnGatewayResult3.fromMap(result);
}
