import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_plan_iam_policy_args.dart';
import 'get_backup_plan_iam_policy_result.dart';

/// Retrieves the current IAM policy data for backupplan
Future<GetBackupPlanIamPolicyResult> getBackupPlanIamPolicy(
  GetBackupPlanIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gkebackup/getBackupPlanIamPolicy:getBackupPlanIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupPlanIamPolicyResult.fromMap(result);
}
