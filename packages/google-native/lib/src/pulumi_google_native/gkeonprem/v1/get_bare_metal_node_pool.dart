import 'package:pulumi/pulumi.dart' hide Config;
import 'get_bare_metal_node_pool_args.dart';
import 'get_bare_metal_node_pool_result.dart';

/// Gets details of a single bare metal node pool.
Future<GetBareMetalNodePoolResult> getBareMetalNodePool(
  GetBareMetalNodePoolArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getBareMetalNodePool',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBareMetalNodePoolResult.fromMap(result);
}
