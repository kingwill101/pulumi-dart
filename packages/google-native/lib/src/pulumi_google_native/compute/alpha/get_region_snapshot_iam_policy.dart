import 'package:pulumi/pulumi.dart';
import 'get_region_snapshot_iam_policy_args.dart';
import 'get_region_snapshot_iam_policy_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetRegionSnapshotIamPolicyResult> getRegionSnapshotIamPolicy(
  GetRegionSnapshotIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionSnapshotIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionSnapshotIamPolicyResult.fromMap(result);
}
