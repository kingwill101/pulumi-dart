import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_edge_security_service_compute_v1_args.dart';
import 'get_network_edge_security_service_compute_v1_result.dart';

/// Gets a specified NetworkEdgeSecurityService.
Future<GetNetworkEdgeSecurityServiceComputeV1Result>
    getNetworkEdgeSecurityServiceComputeV1(
  GetNetworkEdgeSecurityServiceComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getNetworkEdgeSecurityService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkEdgeSecurityServiceComputeV1Result.fromMap(result);
}
