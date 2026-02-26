import 'package:pulumi/pulumi.dart';
import 'get_region_instance_group_manager_args2.dart';
import 'get_region_instance_group_manager_result2.dart';

/// Returns all of the details about the specified managed instance group.
Future<GetRegionInstanceGroupManagerResult2> getRegionInstanceGroupManager2(
  GetRegionInstanceGroupManagerArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionInstanceGroupManager',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionInstanceGroupManagerResult2.fromMap(result);
}
