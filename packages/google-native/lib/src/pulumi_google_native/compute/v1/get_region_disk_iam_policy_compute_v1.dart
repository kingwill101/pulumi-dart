import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_disk_iam_policy_compute_v1_args.dart';
import 'get_region_disk_iam_policy_compute_v1_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetRegionDiskIamPolicyComputeV1Result> getRegionDiskIamPolicyComputeV1(
  GetRegionDiskIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionDiskIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionDiskIamPolicyComputeV1Result.fromMap(result);
}
