import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_edge_security_service_compute_beta_args.dart';
import 'get_network_edge_security_service_compute_beta_result.dart';

/// Gets a specified NetworkEdgeSecurityService.
Future<GetNetworkEdgeSecurityServiceComputeBetaResult>
    getNetworkEdgeSecurityServiceComputeBeta(
  GetNetworkEdgeSecurityServiceComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNetworkEdgeSecurityService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkEdgeSecurityServiceComputeBetaResult.fromMap(result);
}
