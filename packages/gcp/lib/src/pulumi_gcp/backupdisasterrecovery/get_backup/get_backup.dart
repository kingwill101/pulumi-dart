import 'package:pulumi/pulumi.dart';
import 'get_backup_args.dart';
import 'get_backup_result.dart';

/// A Backup and DR Backup.
Future<GetBackupResult> getBackup(
  GetBackupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getBackup:getBackup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackupResult.fromMap(result);
}
