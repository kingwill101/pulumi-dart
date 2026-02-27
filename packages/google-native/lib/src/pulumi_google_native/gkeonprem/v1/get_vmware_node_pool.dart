import 'package:pulumi/pulumi.dart' hide Config;
import 'get_vmware_node_pool_args.dart';
import 'get_vmware_node_pool_result.dart';

/// Gets details of a single VMware node pool.
Future<GetVmwareNodePoolResult> getVmwareNodePool(
  GetVmwareNodePoolArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkeonprem/v1:getVmwareNodePool',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVmwareNodePoolResult.fromMap(result);
}
