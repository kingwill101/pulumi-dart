import 'package:pulumi/pulumi.dart';
import 'get_instance_group_manager_args3.dart';
import 'get_instance_group_manager_result3.dart';

/// Returns all of the details about the specified managed instance group.
Future<GetInstanceGroupManagerResult3> getInstanceGroupManager3(
  GetInstanceGroupManagerArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getInstanceGroupManager',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceGroupManagerResult3.fromMap(result);
}
