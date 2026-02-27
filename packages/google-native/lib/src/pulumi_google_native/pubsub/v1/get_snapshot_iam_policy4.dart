import 'package:pulumi/pulumi.dart' hide Config;
import 'get_snapshot_iam_policy_args4.dart';
import 'get_snapshot_iam_policy_result4.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetSnapshotIamPolicyResult4> getSnapshotIamPolicy4(
  GetSnapshotIamPolicyArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1:getSnapshotIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSnapshotIamPolicyResult4.fromMap(result);
}
