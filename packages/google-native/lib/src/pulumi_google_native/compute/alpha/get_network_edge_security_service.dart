import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_edge_security_service_args.dart';
import 'get_network_edge_security_service_result.dart';

/// Gets a specified NetworkEdgeSecurityService.
Future<GetNetworkEdgeSecurityServiceResult> getNetworkEdgeSecurityService(
  GetNetworkEdgeSecurityServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getNetworkEdgeSecurityService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkEdgeSecurityServiceResult.fromMap(result);
}
