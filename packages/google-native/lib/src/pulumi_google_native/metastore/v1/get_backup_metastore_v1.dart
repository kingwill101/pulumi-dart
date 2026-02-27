import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_metastore_v1_args.dart';
import 'get_backup_metastore_v1_result.dart';

/// Gets details of a single backup.
Future<GetBackupMetastoreV1Result> getBackupMetastoreV1(
  GetBackupMetastoreV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1:getBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupMetastoreV1Result.fromMap(result);
}
