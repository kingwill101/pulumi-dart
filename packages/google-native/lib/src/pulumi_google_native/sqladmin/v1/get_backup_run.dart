import 'package:pulumi/pulumi.dart';
import 'get_backup_run_args.dart';
import 'get_backup_run_result.dart';

/// Retrieves a resource containing information about a backup run.
Future<GetBackupRunResult> getBackupRun(
  GetBackupRunArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1:getBackupRun',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackupRunResult.fromMap(result);
}
