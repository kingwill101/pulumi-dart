import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_disk_iam_policy_compute_v1_args.dart';
import 'get_disk_iam_policy_compute_v1_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetDiskIamPolicyComputeV1Result> getDiskIamPolicyComputeV1(
  GetDiskIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getDiskIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiskIamPolicyComputeV1Result.fromMap(result);
}
