import 'package:pulumi/pulumi.dart';
import 'get_backup_args.dart';
import 'get_backup_result.dart';

/// A Backup and DR Backup.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.backupdisasterrecovery.getBackup({
/// location: "us-central1",
/// project: "project-test",
/// dataSourceId: "ds-test",
/// backupVaultId: "bv-test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.backupdisasterrecovery.get_backup(location="us-central1",
/// project="project-test",
/// data_source_id="ds-test",
/// backup_vault_id="bv-test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foo = Gcp.BackupDisasterRecovery.GetBackup.Invoke(new()
/// {
/// Location = "us-central1",
/// Project = "project-test",
/// DataSourceId = "ds-test",
/// BackupVaultId = "bv-test",
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
/// _, err := backupdisasterrecovery.GetBackup(ctx, &backupdisasterrecovery.GetBackupArgs{
/// Location:      "us-central1",
/// Project:       "project-test",
/// DataSourceId:  "ds-test",
/// BackupVaultId: "bv-test",
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
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.GetBackupArgs;
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
/// final var foo = BackupdisasterrecoveryFunctions.getBackup(GetBackupArgs.builder()
/// .location("us-central1")
/// .project("project-test")
/// .dataSourceId("ds-test")
/// .backupVaultId("bv-test")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// foo:
/// fn::invoke:
/// function: gcp:backupdisasterrecovery:getBackup
/// arguments:
/// location: us-central1
/// project: project-test
/// dataSourceId: ds-test
/// backupVaultId: bv-test
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetBackupResult> getBackup(
  GetBackupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getBackup:getBackup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackupResult.fromMap(result);
}
