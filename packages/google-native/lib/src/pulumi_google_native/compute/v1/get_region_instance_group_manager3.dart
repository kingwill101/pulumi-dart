import 'package:pulumi/pulumi.dart';
import 'get_region_instance_group_manager_args3.dart';
import 'get_region_instance_group_manager_result3.dart';

/// Returns all of the details about the specified managed instance group.
Future<GetRegionInstanceGroupManagerResult3> getRegionInstanceGroupManager3(
  GetRegionInstanceGroupManagerArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionInstanceGroupManager',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionInstanceGroupManagerResult3.fromMap(result);
}
