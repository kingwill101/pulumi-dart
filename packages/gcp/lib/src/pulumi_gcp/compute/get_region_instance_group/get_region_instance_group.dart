import 'package:pulumi/pulumi.dart';
import 'get_region_instance_group_args.dart';
import 'get_region_instance_group_result.dart';

/// Get a Compute Region Instance Group within GCE.
/// For more information, see [the official documentation](https://cloud.google.com/compute/docs/instance-groups/distributing-instances-with-regional-instance-groups) and [API](https://cloud.google.com/compute/docs/reference/latest/regionInstanceGroups).
///
///
///
/// The most common use of this datasource will be to fetch information about the instances inside regional managed instance groups, for instance:
Future<GetRegionInstanceGroupResult> getRegionInstanceGroup(
  GetRegionInstanceGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionInstanceGroup:getRegionInstanceGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionInstanceGroupResult.fromMap(result);
}
