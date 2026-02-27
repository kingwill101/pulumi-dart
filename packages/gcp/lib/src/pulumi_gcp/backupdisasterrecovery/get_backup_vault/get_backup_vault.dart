import 'package:pulumi/pulumi.dart';
import 'get_backup_vault_args.dart';
import 'get_backup_vault_result.dart';

/// A Backup and DRBackupVault.
Future<GetBackupVaultResult> getBackupVault(
  GetBackupVaultArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getBackupVault:getBackupVault',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackupVaultResult.fromMap(result);
}
