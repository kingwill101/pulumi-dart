import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_group_manager_resize_request_compute_beta_args.dart';
import 'get_instance_group_manager_resize_request_compute_beta_result.dart';

/// Returns all of the details about the specified resize request.
Future<GetInstanceGroupManagerResizeRequestComputeBetaResult>
    getInstanceGroupManagerResizeRequestComputeBeta(
  GetInstanceGroupManagerResizeRequestComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInstanceGroupManagerResizeRequest',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceGroupManagerResizeRequestComputeBetaResult.fromMap(result);
}
