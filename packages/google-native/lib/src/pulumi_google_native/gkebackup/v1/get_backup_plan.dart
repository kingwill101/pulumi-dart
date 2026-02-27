import 'package:pulumi/pulumi.dart' hide Config;
import 'get_backup_plan_args.dart';
import 'get_backup_plan_result.dart';

/// Retrieve the details of a single BackupPlan.
Future<GetBackupPlanResult> getBackupPlan(
  GetBackupPlanArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkebackup/v1:getBackupPlan',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackupPlanResult.fromMap(result);
}
