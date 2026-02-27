import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_managedidentities_v1_args.dart';
import 'get_backup_managedidentities_v1_result.dart';

/// Gets details of a single Backup.
Future<GetBackupManagedidentitiesV1Result> getBackupManagedidentitiesV1(
  GetBackupManagedidentitiesV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1:getBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupManagedidentitiesV1Result.fromMap(result);
}
