import 'package:pulumi/pulumi.dart' hide Config;
import 'get_snapshot_iam_policy_args3.dart';
import 'get_snapshot_iam_policy_result3.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetSnapshotIamPolicyResult3> getSnapshotIamPolicy3(
  GetSnapshotIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getSnapshotIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSnapshotIamPolicyResult3.fromMap(result);
}
