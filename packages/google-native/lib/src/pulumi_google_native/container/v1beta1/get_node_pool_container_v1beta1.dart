import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_node_pool_container_v1beta1_args.dart';
import 'get_node_pool_container_v1beta1_result.dart';

/// Retrieves the requested node pool.
Future<GetNodePoolContainerV1beta1Result> getNodePoolContainerV1beta1(
  GetNodePoolContainerV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:container/v1beta1:getNodePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodePoolContainerV1beta1Result.fromMap(result);
}
