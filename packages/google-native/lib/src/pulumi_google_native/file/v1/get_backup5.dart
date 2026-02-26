import 'package:pulumi/pulumi.dart';
import 'get_backup_args5.dart';
import 'get_backup_result5.dart';

/// Gets the details of a specific backup.
Future<GetBackupResult5> getBackup5(
  GetBackupArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:file/v1:getBackup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackupResult5.fromMap(result);
}
