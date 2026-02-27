import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_plan_args.dart';
import 'get_backup_plan_result.dart';

/// Retrieve the details of a single BackupPlan.
Future<GetBackupPlanResult> getBackupPlan(
  GetBackupPlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkebackup/v1:getBackupPlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupPlanResult.fromMap(result);
}
