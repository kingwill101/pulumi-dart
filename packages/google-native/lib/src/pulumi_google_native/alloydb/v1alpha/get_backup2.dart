import 'package:pulumi/pulumi.dart' hide Config;
import 'get_backup_args2.dart';
import 'get_backup_result2.dart';

/// Gets details of a single Backup.
Future<GetBackupResult2> getBackup2(
  GetBackupArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1alpha:getBackup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackupResult2.fromMap(result);
}
