import 'package:pulumi/pulumi.dart';
import 'get_instance_group_manager_args.dart';
import 'get_instance_group_manager_result.dart';

/// Returns all of the details about the specified managed instance group.
Future<GetInstanceGroupManagerResult> getInstanceGroupManager(
  GetInstanceGroupManagerArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInstanceGroupManager',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceGroupManagerResult.fromMap(result);
}
