import 'package:pulumi/pulumi.dart';
import 'get_backup_args10.dart';
import 'get_backup_result10.dart';

/// Gets details of a single Backup.
Future<GetBackupResult10> getBackup10(
  GetBackupArgs10 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1beta1:getBackup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackupResult10.fromMap(result);
}
