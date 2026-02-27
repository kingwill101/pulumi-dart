import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_iam_policy_args.dart';
import 'get_snapshot_iam_policy_result.dart';

/// Retrieves the current IAM policy data for snapshot
Future<GetSnapshotIamPolicyResult> getSnapshotIamPolicy(
  GetSnapshotIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getSnapshotIamPolicy:getSnapshotIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotIamPolicyResult.fromMap(result);
}
