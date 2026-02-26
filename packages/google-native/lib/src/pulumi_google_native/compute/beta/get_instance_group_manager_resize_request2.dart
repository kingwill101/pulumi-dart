import 'package:pulumi/pulumi.dart';
import 'get_instance_group_manager_resize_request_args2.dart';
import 'get_instance_group_manager_resize_request_result2.dart';

/// Returns all of the details about the specified resize request.
Future<GetInstanceGroupManagerResizeRequestResult2>
    getInstanceGroupManagerResizeRequest2(
  GetInstanceGroupManagerResizeRequestArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInstanceGroupManagerResizeRequest',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceGroupManagerResizeRequestResult2.fromMap(result);
}
