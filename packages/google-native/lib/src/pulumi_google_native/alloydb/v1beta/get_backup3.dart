import 'package:pulumi/pulumi.dart' hide Config;
import 'get_backup_args3.dart';
import 'get_backup_result3.dart';

/// Gets details of a single Backup.
Future<GetBackupResult3> getBackup3(
  GetBackupArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1beta:getBackup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackupResult3.fromMap(result);
}
