import 'package:pulumi/pulumi.dart' hide Config;
import 'get_backup_args14.dart';
import 'get_backup_result14.dart';

/// Gets metadata on a pending or completed Backup.
Future<GetBackupResult14> getBackup14(
  GetBackupArgs14 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:spanner/v1:getBackup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackupResult14.fromMap(result);
}
