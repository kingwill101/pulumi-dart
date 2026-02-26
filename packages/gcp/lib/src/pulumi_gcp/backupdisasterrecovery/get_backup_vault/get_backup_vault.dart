import 'package:pulumi/pulumi.dart';
import 'get_backup_vault_args.dart';
import 'get_backup_vault_result.dart';

/// A Backup and DRBackupVault.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_backup_vault = gcp.backupdisasterrecovery.getBackupVault({
/// location: "us-central1",
/// backupVaultId: "bv-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_backup_vault = gcp.backupdisasterrecovery.get_backup_vault(location="us-central1",
/// backup_vault_id="bv-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_backup_vault = Gcp.BackupDisasterRecovery.GetBackupVault.Invoke(new()
/// {
/// Location = "us-central1",
/// BackupVaultId = "bv-1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/backupdisasterrecovery"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := backupdisasterrecovery.LookupBackupVault(ctx, &backupdisasterrecovery.LookupBackupVaultArgs{
/// Location:      "us-central1",
/// BackupVaultId: "bv-1",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupdisasterrecoveryFunctions;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.GetBackupVaultArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var my-backup-vault = BackupdisasterrecoveryFunctions.getBackupVault(GetBackupVaultArgs.builder()
/// .location("us-central1")
/// .backupVaultId("bv-1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-backup-vault:
/// fn::invoke:
/// function: gcp:backupdisasterrecovery:getBackupVault
/// arguments:
/// location: us-central1
/// backupVaultId: bv-1
/// ```
/// <!--End PulumiCodeChooser -->
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
