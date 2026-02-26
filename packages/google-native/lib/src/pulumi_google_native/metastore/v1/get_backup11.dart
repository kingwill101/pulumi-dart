import 'package:pulumi/pulumi.dart';
import 'get_backup_args11.dart';
import 'get_backup_result11.dart';

/// Gets details of a single backup.
Future<GetBackupResult11> getBackup11(
  GetBackupArgs11 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1:getBackup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackupResult11.fromMap(result);
}
