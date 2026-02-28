import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_plan_iam_policy_args.dart';
import 'get_backup_plan_iam_policy_result.dart';
import 'get_restore_plan_iam_policy_args.dart';
import 'get_restore_plan_iam_policy_result.dart';

/// Retrieves the current IAM policy data for backupplan
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.gkebackup.getBackupPlanIamPolicy({
///     project: basic.project,
///     location: basic.location,
///     name: basic.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.gkebackup.get_backup_plan_iam_policy(project=basic["project"],
///     location=basic["location"],
///     name=basic["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.GkeBackup.GetBackupPlanIamPolicy.Invoke(new()
///     {
///         Project = basic.Project,
///         Location = basic.Location,
///         Name = basic.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkebackup.LookupBackupPlanIamPolicy(ctx, &gkebackup.LookupBackupPlanIamPolicyArgs{
/// 			Project:  pulumi.StringRef(basic.Project),
/// 			Location: pulumi.StringRef(basic.Location),
/// 			Name:     basic.Name,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var policy = GkebackupFunctions.getBackupPlanIamPolicy(GetBackupPlanIamPolicyArgs.builder()
///             .project(basic.project())
///             .location(basic.location())
///             .name(basic.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:gkebackup:getBackupPlanIamPolicy
///       arguments:
///         project: ${basic.project}
///         location: ${basic.location}
///         name: ${basic.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_gkebackup_get_backup_plan_iam_policy_get_backup_plan_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupPlanIamPolicyResult> getBackupPlanIamPolicy(
  GetBackupPlanIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gkebackup/getBackupPlanIamPolicy:getBackupPlanIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupPlanIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for restoreplan
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.gkebackup.getRestorePlanIamPolicy({
///     project: allNs.project,
///     location: allNs.location,
///     name: allNs.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.gkebackup.get_restore_plan_iam_policy(project=all_ns["project"],
///     location=all_ns["location"],
///     name=all_ns["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.GkeBackup.GetRestorePlanIamPolicy.Invoke(new()
///     {
///         Project = allNs.Project,
///         Location = allNs.Location,
///         Name = allNs.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkebackup.LookupRestorePlanIamPolicy(ctx, &gkebackup.LookupRestorePlanIamPolicyArgs{
/// 			Project:  pulumi.StringRef(allNs.Project),
/// 			Location: pulumi.StringRef(allNs.Location),
/// 			Name:     allNs.Name,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var policy = GkebackupFunctions.getRestorePlanIamPolicy(GetRestorePlanIamPolicyArgs.builder()
///             .project(allNs.project())
///             .location(allNs.location())
///             .name(allNs.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:gkebackup:getRestorePlanIamPolicy
///       arguments:
///         project: ${allNs.project}
///         location: ${allNs.location}
///         name: ${allNs.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_gkebackup_get_restore_plan_iam_policy_get_restore_plan_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRestorePlanIamPolicyResult> getRestorePlanIamPolicy(
  GetRestorePlanIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gkebackup/getRestorePlanIamPolicy:getRestorePlanIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRestorePlanIamPolicyResult.fromMap(result);
}
