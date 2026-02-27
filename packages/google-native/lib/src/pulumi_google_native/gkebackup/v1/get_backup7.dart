import 'package:pulumi/pulumi.dart' hide Config;
import 'get_backup_args7.dart';
import 'get_backup_result7.dart';

/// Retrieve the details of a single Backup.
Future<GetBackupResult7> getBackup7(
  GetBackupArgs7 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkebackup/v1:getBackup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackupResult7.fromMap(result);
}
