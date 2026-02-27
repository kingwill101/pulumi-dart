import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_iam_policy_compute_v1_args.dart';
import 'get_snapshot_iam_policy_compute_v1_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetSnapshotIamPolicyComputeV1Result> getSnapshotIamPolicyComputeV1(
  GetSnapshotIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getSnapshotIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotIamPolicyComputeV1Result.fromMap(result);
}
