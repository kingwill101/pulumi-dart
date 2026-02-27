import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_instant_snapshot_iam_policy_args2.dart';
import 'get_region_instant_snapshot_iam_policy_result2.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetRegionInstantSnapshotIamPolicyResult2>
    getRegionInstantSnapshotIamPolicy2(
  GetRegionInstantSnapshotIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionInstantSnapshotIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionInstantSnapshotIamPolicyResult2.fromMap(result);
}
