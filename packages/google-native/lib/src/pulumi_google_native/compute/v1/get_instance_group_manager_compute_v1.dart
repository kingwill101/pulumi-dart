import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_group_manager_compute_v1_args.dart';
import 'get_instance_group_manager_compute_v1_result.dart';

/// Returns all of the details about the specified managed instance group.
Future<GetInstanceGroupManagerComputeV1Result> getInstanceGroupManagerComputeV1(
  GetInstanceGroupManagerComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getInstanceGroupManager',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceGroupManagerComputeV1Result.fromMap(result);
}
