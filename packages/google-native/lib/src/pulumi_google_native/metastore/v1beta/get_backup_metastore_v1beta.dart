import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_metastore_v1beta_args.dart';
import 'get_backup_metastore_v1beta_result.dart';

/// Gets details of a single backup.
Future<GetBackupMetastoreV1betaResult> getBackupMetastoreV1beta(
  GetBackupMetastoreV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupMetastoreV1betaResult.fromMap(result);
}
