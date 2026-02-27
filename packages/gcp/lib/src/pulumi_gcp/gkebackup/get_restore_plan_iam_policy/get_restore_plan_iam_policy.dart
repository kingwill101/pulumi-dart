import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_restore_plan_iam_policy_args.dart';
import 'get_restore_plan_iam_policy_result.dart';

/// Retrieves the current IAM policy data for restoreplan
Future<GetRestorePlanIamPolicyResult> getRestorePlanIamPolicy(
  GetRestorePlanIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gkebackup/getRestorePlanIamPolicy:getRestorePlanIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRestorePlanIamPolicyResult.fromMap(result);
}
