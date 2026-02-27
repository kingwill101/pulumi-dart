import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_managedidentities_v1beta1_args.dart';
import 'get_backup_managedidentities_v1beta1_result.dart';

/// Gets details of a single Backup.
Future<GetBackupManagedidentitiesV1beta1Result>
    getBackupManagedidentitiesV1beta1(
  GetBackupManagedidentitiesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1beta1:getBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupManagedidentitiesV1beta1Result.fromMap(result);
}
