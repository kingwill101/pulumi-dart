import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_plan_backup_args.dart';
import 'get_plan_backup_result.dart';

/// Use this data source to get information on an existing backup plan.
Future<GetPlanBackupResult> getPlanBackup(
  GetPlanBackupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:backup/getPlan:getPlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPlanBackupResult.fromMap(result);
}
