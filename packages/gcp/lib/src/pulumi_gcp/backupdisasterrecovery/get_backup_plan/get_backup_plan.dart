import 'package:pulumi/pulumi.dart';
import 'get_backup_plan_args.dart';
import 'get_backup_plan_result.dart';

Future<GetBackupPlanResult> getBackupPlan(
  GetBackupPlanArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getBackupPlan:getBackupPlan',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackupPlanResult.fromMap(result);
}
