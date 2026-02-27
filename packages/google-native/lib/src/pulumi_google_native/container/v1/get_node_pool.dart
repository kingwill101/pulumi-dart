import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_node_pool_args.dart';
import 'get_node_pool_result.dart';

/// Retrieves the requested node pool.
Future<GetNodePoolResult> getNodePool(
  GetNodePoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:container/v1:getNodePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodePoolResult.fromMap(result);
}
