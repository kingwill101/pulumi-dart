import 'package:pulumi/pulumi.dart' hide Config;
import 'get_instant_snapshot_iam_policy_args2.dart';
import 'get_instant_snapshot_iam_policy_result2.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetInstantSnapshotIamPolicyResult2> getInstantSnapshotIamPolicy2(
  GetInstantSnapshotIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInstantSnapshotIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstantSnapshotIamPolicyResult2.fromMap(result);
}
