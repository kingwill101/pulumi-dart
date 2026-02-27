import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bare_metal_node_pool_args.dart';
import 'get_bare_metal_node_pool_result.dart';

/// Gets details of a single bare metal node pool.
Future<GetBareMetalNodePoolResult> getBareMetalNodePool(
  GetBareMetalNodePoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getBareMetalNodePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBareMetalNodePoolResult.fromMap(result);
}
