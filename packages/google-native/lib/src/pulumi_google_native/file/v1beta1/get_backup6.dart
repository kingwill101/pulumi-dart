import 'package:pulumi/pulumi.dart' hide Config;
import 'get_backup_args6.dart';
import 'get_backup_result6.dart';

/// Gets the details of a specific backup.
Future<GetBackupResult6> getBackup6(
  GetBackupArgs6 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:file/v1beta1:getBackup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackupResult6.fromMap(result);
}
