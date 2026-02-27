import 'package:pulumi/pulumi.dart' hide Config;
import 'get_backup_args4.dart';
import 'get_backup_result4.dart';

/// Gets metadata on a pending or completed Cloud Bigtable Backup.
Future<GetBackupResult4> getBackup4(
  GetBackupArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigtableadmin/v2:getBackup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackupResult4.fromMap(result);
}
