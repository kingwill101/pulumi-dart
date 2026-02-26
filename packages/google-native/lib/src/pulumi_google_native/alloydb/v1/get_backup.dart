import 'package:pulumi/pulumi.dart';
import 'get_backup_args.dart';
import 'get_backup_result.dart';

/// Gets details of a single Backup.
Future<GetBackupResult> getBackup(
  GetBackupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1:getBackup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackupResult.fromMap(result);
}
