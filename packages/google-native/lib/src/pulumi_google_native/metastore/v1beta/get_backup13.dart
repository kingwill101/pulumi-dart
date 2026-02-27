import 'package:pulumi/pulumi.dart' hide Config;
import 'get_backup_args13.dart';
import 'get_backup_result13.dart';

/// Gets details of a single backup.
Future<GetBackupResult13> getBackup13(
  GetBackupArgs13 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getBackup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackupResult13.fromMap(result);
}
