import 'package:pulumi/pulumi.dart' hide Config;
import 'get_network_edge_security_service_args3.dart';
import 'get_network_edge_security_service_result3.dart';

/// Gets a specified NetworkEdgeSecurityService.
Future<GetNetworkEdgeSecurityServiceResult3> getNetworkEdgeSecurityService3(
  GetNetworkEdgeSecurityServiceArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getNetworkEdgeSecurityService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkEdgeSecurityServiceResult3.fromMap(result);
}
