import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_instance_group_manager_compute_v1_args.dart';
import 'get_region_instance_group_manager_compute_v1_result.dart';

/// Returns all of the details about the specified managed instance group.
Future<GetRegionInstanceGroupManagerComputeV1Result>
    getRegionInstanceGroupManagerComputeV1(
  GetRegionInstanceGroupManagerComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionInstanceGroupManager',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionInstanceGroupManagerComputeV1Result.fromMap(result);
}
