import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vmware_node_pool_args.dart';
import 'get_vmware_node_pool_result.dart';

/// Gets details of a single VMware node pool.
Future<GetVmwareNodePoolResult> getVmwareNodePool(
  GetVmwareNodePoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getVmwareNodePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVmwareNodePoolResult.fromMap(result);
}
