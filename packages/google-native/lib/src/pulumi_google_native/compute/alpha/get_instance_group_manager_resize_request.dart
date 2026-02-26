import 'package:pulumi/pulumi.dart';
import 'get_instance_group_manager_resize_request_args.dart';
import 'get_instance_group_manager_resize_request_result.dart';

/// Returns all of the details about the specified resize request.
Future<GetInstanceGroupManagerResizeRequestResult>
    getInstanceGroupManagerResizeRequest(
  GetInstanceGroupManagerResizeRequestArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInstanceGroupManagerResizeRequest',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceGroupManagerResizeRequestResult.fromMap(result);
}
