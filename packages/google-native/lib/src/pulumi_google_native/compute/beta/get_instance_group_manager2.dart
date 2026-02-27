import 'package:pulumi/pulumi.dart' hide Config;
import 'get_instance_group_manager_args2.dart';
import 'get_instance_group_manager_result2.dart';

/// Returns all of the details about the specified managed instance group.
Future<GetInstanceGroupManagerResult2> getInstanceGroupManager2(
  GetInstanceGroupManagerArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInstanceGroupManager',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceGroupManagerResult2.fromMap(result);
}
