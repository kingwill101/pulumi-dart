import 'package:pulumi/pulumi.dart';
import 'get_backup_plan_associations_args.dart';
import 'get_backup_plan_associations_result.dart';

/// Provides a list of Backup and DR BackupPlanAssociations.
Future<GetBackupPlanAssociationsResult> getBackupPlanAssociations(
  GetBackupPlanAssociationsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getBackupPlanAssociations:getBackupPlanAssociations',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackupPlanAssociationsResult.fromMap(result);
}
