import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_run_args.dart';
import 'get_backup_run_result.dart';

/// Use this data source to get information about a Cloud SQL instance backup run.
Future<GetBackupRunResult> getBackupRun(
  GetBackupRunArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sql/getBackupRun:getBackupRun',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupRunResult.fromMap(result);
}
