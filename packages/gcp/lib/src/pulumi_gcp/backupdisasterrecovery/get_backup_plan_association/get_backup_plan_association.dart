import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_plan_association_args.dart';
import 'get_backup_plan_association_result.dart';

/// A Backup and DR BackupPlanAssociation.
Future<GetBackupPlanAssociationResult> getBackupPlanAssociation(
  GetBackupPlanAssociationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getBackupPlanAssociation:getBackupPlanAssociation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupPlanAssociationResult.fromMap(result);
}
