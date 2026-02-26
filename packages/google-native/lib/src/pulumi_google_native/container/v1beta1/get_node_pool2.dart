import 'package:pulumi/pulumi.dart';
import 'get_node_pool_args2.dart';
import 'get_node_pool_result2.dart';

/// Retrieves the requested node pool.
Future<GetNodePoolResult2> getNodePool2(
  GetNodePoolArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:container/v1beta1:getNodePool',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNodePoolResult2.fromMap(result);
}
