import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_plan_associations_args.dart';
import 'get_backup_plan_associations_result.dart';

/// Provides a list of Backup and DR BackupPlanAssociations.
Future<GetBackupPlanAssociationsResult> getBackupPlanAssociations(
  GetBackupPlanAssociationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getBackupPlanAssociations:getBackupPlanAssociations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupPlanAssociationsResult.fromMap(result);
}
