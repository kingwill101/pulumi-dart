import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_iam_policy_pubsub_v1_args.dart';
import 'get_snapshot_iam_policy_pubsub_v1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetSnapshotIamPolicyPubsubV1Result> getSnapshotIamPolicyPubsubV1(
  GetSnapshotIamPolicyPubsubV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1:getSnapshotIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotIamPolicyPubsubV1Result.fromMap(result);
}
