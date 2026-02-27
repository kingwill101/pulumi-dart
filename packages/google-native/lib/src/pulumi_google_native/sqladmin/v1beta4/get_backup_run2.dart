import 'package:pulumi/pulumi.dart' hide Config;
import 'get_backup_run_args2.dart';
import 'get_backup_run_result2.dart';

/// Retrieves a resource containing information about a backup run.
Future<GetBackupRunResult2> getBackupRun2(
  GetBackupRunArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1beta4:getBackupRun',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackupRunResult2.fromMap(result);
}
