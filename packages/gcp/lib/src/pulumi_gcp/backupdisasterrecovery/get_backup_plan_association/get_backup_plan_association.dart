import 'package:pulumi/pulumi.dart';
import 'get_backup_plan_association_args.dart';
import 'get_backup_plan_association_result.dart';

/// A Backup and DR BackupPlanAssociation.
Future<GetBackupPlanAssociationResult> getBackupPlanAssociation(
  GetBackupPlanAssociationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getBackupPlanAssociation:getBackupPlanAssociation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackupPlanAssociationResult.fromMap(result);
}
