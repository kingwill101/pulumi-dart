import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_metastore_v1alpha_args.dart';
import 'get_backup_metastore_v1alpha_result.dart';

/// Gets details of a single backup.
Future<GetBackupMetastoreV1alphaResult> getBackupMetastoreV1alpha(
  GetBackupMetastoreV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupMetastoreV1alphaResult.fromMap(result);
}
