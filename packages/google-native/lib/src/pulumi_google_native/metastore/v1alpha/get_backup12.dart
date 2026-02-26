import 'package:pulumi/pulumi.dart';
import 'get_backup_args12.dart';
import 'get_backup_result12.dart';

/// Gets details of a single backup.
Future<GetBackupResult12> getBackup12(
  GetBackupArgs12 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getBackup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackupResult12.fromMap(result);
}
