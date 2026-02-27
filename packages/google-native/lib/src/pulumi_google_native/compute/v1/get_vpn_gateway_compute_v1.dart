import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpn_gateway_compute_v1_args.dart';
import 'get_vpn_gateway_compute_v1_result.dart';

/// Returns the specified VPN gateway.
Future<GetVpnGatewayComputeV1Result> getVpnGatewayComputeV1(
  GetVpnGatewayComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getVpnGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpnGatewayComputeV1Result.fromMap(result);
}
