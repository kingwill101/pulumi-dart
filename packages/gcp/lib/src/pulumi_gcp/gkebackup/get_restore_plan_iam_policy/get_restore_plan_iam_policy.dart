import 'package:pulumi/pulumi.dart';
import 'get_restore_plan_iam_policy_args.dart';
import 'get_restore_plan_iam_policy_result.dart';

/// Retrieves the current IAM policy data for restoreplan
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.gkebackup.getRestorePlanIamPolicy({
/// project: allNs.project,
/// location: allNs.location,
/// name: allNs.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.gkebackup.get_restore_plan_iam_policy(project=all_ns["project"],
/// location=all_ns["location"],
/// name=all_ns["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.GkeBackup.GetRestorePlanIamPolicy.Invoke(new()
/// {
/// Project = allNs.Project,
/// Location = allNs.Location,
/// Name = allNs.Name,
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
/// _, err := gkebackup.LookupRestorePlanIamPolicy(ctx, &gkebackup.LookupRestorePlanIamPolicyArgs{
/// Project:  pulumi.StringRef(allNs.Project),
/// Location: pulumi.StringRef(allNs.Location),
/// Name:     allNs.Name,
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
/// import com.pulumi.gcp.gkebackup.inputs.GetRestorePlanIamPolicyArgs;
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
/// final var policy = GkebackupFunctions.getRestorePlanIamPolicy(GetRestorePlanIamPolicyArgs.builder()
/// .project(allNs.project())
/// .location(allNs.location())
/// .name(allNs.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:gkebackup:getRestorePlanIamPolicy
/// arguments:
/// project: ${allNs.project}
/// location: ${allNs.location}
/// name: ${allNs.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRestorePlanIamPolicyResult> getRestorePlanIamPolicy(
  GetRestorePlanIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gkebackup/getRestorePlanIamPolicy:getRestorePlanIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRestorePlanIamPolicyResult.fromMap(result);
}
