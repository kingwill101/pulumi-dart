import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_instance_group_manager_args.dart';
import 'get_region_instance_group_manager_result.dart';

/// Returns all of the details about the specified managed instance group.
Future<GetRegionInstanceGroupManagerResult> getRegionInstanceGroupManager(
  GetRegionInstanceGroupManagerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionInstanceGroupManager',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionInstanceGroupManagerResult.fromMap(result);
}
