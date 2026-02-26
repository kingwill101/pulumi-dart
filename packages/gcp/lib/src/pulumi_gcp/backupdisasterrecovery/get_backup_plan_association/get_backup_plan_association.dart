import 'package:pulumi/pulumi.dart';
import 'get_backup_plan_association_args.dart';
import 'get_backup_plan_association_result.dart';

/// A Backup and DR BackupPlanAssociation.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_backupplan_association = gcp.backupdisasterrecovery.getBackupPlanAssociation({
/// location: "us-central1",
/// backupPlanAssociationId: "bpa-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_backupplan_association = gcp.backupdisasterrecovery.get_backup_plan_association(location="us-central1",
/// backup_plan_association_id="bpa-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_backupplan_association = Gcp.BackupDisasterRecovery.GetBackupPlanAssociation.Invoke(new()
/// {
/// Location = "us-central1",
/// BackupPlanAssociationId = "bpa-id",
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
/// _, err := backupdisasterrecovery.LookupBackupPlanAssociation(ctx, &backupdisasterrecovery.LookupBackupPlanAssociationArgs{
/// Location:                "us-central1",
/// BackupPlanAssociationId: "bpa-id",
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
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.GetBackupPlanAssociationArgs;
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
/// final var my-backupplan-association = BackupdisasterrecoveryFunctions.getBackupPlanAssociation(GetBackupPlanAssociationArgs.builder()
/// .location("us-central1")
/// .backupPlanAssociationId("bpa-id")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-backupplan-association:
/// fn::invoke:
/// function: gcp:backupdisasterrecovery:getBackupPlanAssociation
/// arguments:
/// location: us-central1
/// backupPlanAssociationId: bpa-id
/// ```
/// <!--End PulumiCodeChooser -->
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
