import 'package:pulumi/pulumi.dart';
import 'get_node_pool_args.dart';
import 'get_node_pool_result.dart';

/// Retrieves the requested node pool.
Future<GetNodePoolResult> getNodePool(
  GetNodePoolArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:container/v1:getNodePool',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNodePoolResult.fromMap(result);
}
