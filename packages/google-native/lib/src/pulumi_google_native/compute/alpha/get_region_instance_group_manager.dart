import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_instance_group_manager_args.dart';
import 'get_region_instance_group_manager_result.dart';

/// Returns all of the details about the specified managed instance group.
Future<GetRegionInstanceGroupManagerResult> getRegionInstanceGroupManager(
  GetRegionInstanceGroupManagerArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionInstanceGroupManager',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionInstanceGroupManagerResult.fromMap(result);
}
