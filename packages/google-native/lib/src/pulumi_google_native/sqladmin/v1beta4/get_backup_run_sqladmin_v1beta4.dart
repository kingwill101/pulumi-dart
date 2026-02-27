import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_run_sqladmin_v1beta4_args.dart';
import 'get_backup_run_sqladmin_v1beta4_result.dart';

/// Retrieves a resource containing information about a backup run.
Future<GetBackupRunSqladminV1beta4Result> getBackupRunSqladminV1beta4(
  GetBackupRunSqladminV1beta4Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1beta4:getBackupRun',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupRunSqladminV1beta4Result.fromMap(result);
}
