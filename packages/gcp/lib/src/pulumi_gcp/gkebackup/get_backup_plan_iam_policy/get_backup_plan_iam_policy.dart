import 'package:pulumi/pulumi.dart';
import 'get_backup_plan_iam_policy_args.dart';
import 'get_backup_plan_iam_policy_result.dart';

/// Retrieves the current IAM policy data for backupplan
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.gkebackup.getBackupPlanIamPolicy({
/// project: basic.project,
/// location: basic.location,
/// name: basic.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.gkebackup.get_backup_plan_iam_policy(project=basic["project"],
/// location=basic["location"],
/// name=basic["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.GkeBackup.GetBackupPlanIamPolicy.Invoke(new()
/// {
/// Project = basic.Project,
/// Location = basic.Location,
/// Name = basic.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gkebackup.LookupBackupPlanIamPolicy(ctx, &gkebackup.LookupBackupPlanIamPolicyArgs{
/// Project:  pulumi.StringRef(basic.Project),
/// Location: pulumi.StringRef(basic.Location),
/// Name:     basic.Name,
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
/// import com.pulumi.gcp.gkebackup.GkebackupFunctions;
/// import com.pulumi.gcp.gkebackup.inputs.GetBackupPlanIamPolicyArgs;
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
/// final var policy = GkebackupFunctions.getBackupPlanIamPolicy(GetBackupPlanIamPolicyArgs.builder()
/// .project(basic.project())
/// .location(basic.location())
/// .name(basic.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:gkebackup:getBackupPlanIamPolicy
/// arguments:
/// project: ${basic.project}
/// location: ${basic.location}
/// name: ${basic.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetBackupPlanIamPolicyResult> getBackupPlanIamPolicy(
  GetBackupPlanIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gkebackup/getBackupPlanIamPolicy:getBackupPlanIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackupPlanIamPolicyResult.fromMap(result);
}
