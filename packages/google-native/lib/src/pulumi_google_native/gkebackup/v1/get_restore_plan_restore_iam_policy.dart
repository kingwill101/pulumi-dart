import 'package:pulumi/pulumi.dart' hide Config;
import 'get_restore_plan_restore_iam_policy_args.dart';
import 'get_restore_plan_restore_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetRestorePlanRestoreIamPolicyResult> getRestorePlanRestoreIamPolicy(
  GetRestorePlanRestoreIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkebackup/v1:getRestorePlanRestoreIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRestorePlanRestoreIamPolicyResult.fromMap(result);
}
