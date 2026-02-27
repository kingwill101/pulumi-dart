import 'package:pulumi/pulumi.dart';
import 'get_instance_group_manager_args.dart';
import 'get_instance_group_manager_result.dart';

/// Get a Compute Instance Group Manager within GCE.
/// For more information, see [the official documentation](https://cloud.google.com/compute/docs/instance-groups#managed_instance_groups)
/// and [API](https://cloud.google.com/compute/docs/reference/latest/instanceGroupManagers)
Future<GetInstanceGroupManagerResult> getInstanceGroupManager(
  GetInstanceGroupManagerArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInstanceGroupManager:getInstanceGroupManager',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceGroupManagerResult.fromMap(result);
}
