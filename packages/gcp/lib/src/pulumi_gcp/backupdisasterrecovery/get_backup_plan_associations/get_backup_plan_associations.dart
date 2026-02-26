import 'package:pulumi/pulumi.dart';
import 'get_backup_plan_associations_args.dart';
import 'get_backup_plan_associations_result.dart';

/// Provides a list of Backup and DR BackupPlanAssociations.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const allAssociations = gcp.backupdisasterrecovery.getBackupPlanAssociations({
/// location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// all_associations = gcp.backupdisasterrecovery.get_backup_plan_associations(location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var allAssociations = Gcp.BackupDisasterRecovery.GetBackupPlanAssociations.Invoke(new()
/// {
/// Location = "us-central1",
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
/// _, err := backupdisasterrecovery.GetBackupPlanAssociations(ctx, &backupdisasterrecovery.GetBackupPlanAssociationsArgs{
/// Location: "us-central1",
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
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.GetBackupPlanAssociationsArgs;
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
/// final var allAssociations = BackupdisasterrecoveryFunctions.getBackupPlanAssociations(GetBackupPlanAssociationsArgs.builder()
/// .location("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// allAssociations:
/// fn::invoke:
/// function: gcp:backupdisasterrecovery:getBackupPlanAssociations
/// arguments:
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
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
