import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instant_snapshot_iam_policy_args.dart';
import 'get_instant_snapshot_iam_policy_result.dart';

/// Retrieves the current IAM policy data for instantsnapshot
Future<GetInstantSnapshotIamPolicyResult> getInstantSnapshotIamPolicy(
  GetInstantSnapshotIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInstantSnapshotIamPolicy:getInstantSnapshotIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstantSnapshotIamPolicyResult.fromMap(result);
}
