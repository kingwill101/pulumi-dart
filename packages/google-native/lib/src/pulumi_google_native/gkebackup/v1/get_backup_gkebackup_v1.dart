import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_gkebackup_v1_args.dart';
import 'get_backup_gkebackup_v1_result.dart';

/// Retrieve the details of a single Backup.
Future<GetBackupGkebackupV1Result> getBackupGkebackupV1(
  GetBackupGkebackupV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkebackup/v1:getBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupGkebackupV1Result.fromMap(result);
}
