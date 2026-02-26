import 'package:pulumi/pulumi.dart';
import 'get_network_edge_security_service_args2.dart';
import 'get_network_edge_security_service_result2.dart';

/// Gets a specified NetworkEdgeSecurityService.
Future<GetNetworkEdgeSecurityServiceResult2> getNetworkEdgeSecurityService2(
  GetNetworkEdgeSecurityServiceArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNetworkEdgeSecurityService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkEdgeSecurityServiceResult2.fromMap(result);
}
