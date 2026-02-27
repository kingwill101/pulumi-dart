import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_external_vpn_gateway_args.dart';
import 'get_external_vpn_gateway_result.dart';

/// Returns the specified externalVpnGateway. Get a list of available externalVpnGateways by making a list() request.
Future<GetExternalVpnGatewayResult> getExternalVpnGateway(
  GetExternalVpnGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getExternalVpnGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExternalVpnGatewayResult.fromMap(result);
}
