import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_alloydb_v1beta_args.dart';
import 'get_backup_alloydb_v1beta_result.dart';

/// Gets details of a single Backup.
Future<GetBackupAlloydbV1betaResult> getBackupAlloydbV1beta(
  GetBackupAlloydbV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1beta:getBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupAlloydbV1betaResult.fromMap(result);
}
