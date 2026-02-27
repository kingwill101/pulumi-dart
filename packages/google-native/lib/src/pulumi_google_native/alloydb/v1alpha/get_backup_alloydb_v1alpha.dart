import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_alloydb_v1alpha_args.dart';
import 'get_backup_alloydb_v1alpha_result.dart';

/// Gets details of a single Backup.
Future<GetBackupAlloydbV1alphaResult> getBackupAlloydbV1alpha(
  GetBackupAlloydbV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1alpha:getBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupAlloydbV1alphaResult.fromMap(result);
}
