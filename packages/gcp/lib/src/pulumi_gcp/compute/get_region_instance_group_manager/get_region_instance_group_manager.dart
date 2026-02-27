import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_instance_group_manager_args.dart';
import 'get_region_instance_group_manager_result.dart';

/// Get a Compute Region Instance Group Manager within GCE.
/// For more information, see [the official documentation](https://cloud.google.com/compute/docs/instance-groups/distributing-instances-with-regional-instance-groups)
/// and [API](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroupManagers)
Future<GetRegionInstanceGroupManagerResult> getRegionInstanceGroupManager(
  GetRegionInstanceGroupManagerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionInstanceGroupManager:getRegionInstanceGroupManager',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionInstanceGroupManagerResult.fromMap(result);
}
