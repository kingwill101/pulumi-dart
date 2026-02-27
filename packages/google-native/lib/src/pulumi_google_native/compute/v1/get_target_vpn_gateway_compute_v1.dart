import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_target_vpn_gateway_compute_v1_args.dart';
import 'get_target_vpn_gateway_compute_v1_result.dart';

/// Returns the specified target VPN gateway.
Future<GetTargetVpnGatewayComputeV1Result> getTargetVpnGatewayComputeV1(
  GetTargetVpnGatewayComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getTargetVpnGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetVpnGatewayComputeV1Result.fromMap(result);
}
