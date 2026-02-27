import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_bigtableadmin_v2_args.dart';
import 'get_backup_bigtableadmin_v2_result.dart';

/// Gets metadata on a pending or completed Cloud Bigtable Backup.
Future<GetBackupBigtableadminV2Result> getBackupBigtableadminV2(
  GetBackupBigtableadminV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigtableadmin/v2:getBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupBigtableadminV2Result.fromMap(result);
}
