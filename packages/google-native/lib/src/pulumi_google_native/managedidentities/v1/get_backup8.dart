import 'package:pulumi/pulumi.dart' hide Config;
import 'get_backup_args8.dart';
import 'get_backup_result8.dart';

/// Gets details of a single Backup.
Future<GetBackupResult8> getBackup8(
  GetBackupArgs8 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1:getBackup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackupResult8.fromMap(result);
}
