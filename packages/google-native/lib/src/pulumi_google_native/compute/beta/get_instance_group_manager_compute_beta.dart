import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_group_manager_compute_beta_args.dart';
import 'get_instance_group_manager_compute_beta_result.dart';

/// Returns all of the details about the specified managed instance group.
Future<GetInstanceGroupManagerComputeBetaResult>
    getInstanceGroupManagerComputeBeta(
  GetInstanceGroupManagerComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInstanceGroupManager',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceGroupManagerComputeBetaResult.fromMap(result);
}
