import 'package:pulumi/pulumi.dart' hide Config;
import 'get_backup_args9.dart';
import 'get_backup_result9.dart';

/// Gets details of a single Backup.
Future<GetBackupResult9> getBackup9(
  GetBackupArgs9 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1alpha1:getBackup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackupResult9.fromMap(result);
}
