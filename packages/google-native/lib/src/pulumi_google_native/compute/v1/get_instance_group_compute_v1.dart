import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_group_compute_v1_args.dart';
import 'get_instance_group_compute_v1_result.dart';

/// Returns the specified zonal instance group. Get a list of available zonal instance groups by making a list() request. For managed instance groups, use the instanceGroupManagers or regionInstanceGroupManagers methods instead.
Future<GetInstanceGroupComputeV1Result> getInstanceGroupComputeV1(
  GetInstanceGroupComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getInstanceGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceGroupComputeV1Result.fromMap(result);
}
