import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_external_vpn_gateway_compute_v1_args.dart';
import 'get_external_vpn_gateway_compute_v1_result.dart';

/// Returns the specified externalVpnGateway. Get a list of available externalVpnGateways by making a list() request.
Future<GetExternalVpnGatewayComputeV1Result> getExternalVpnGatewayComputeV1(
  GetExternalVpnGatewayComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getExternalVpnGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExternalVpnGatewayComputeV1Result.fromMap(result);
}
