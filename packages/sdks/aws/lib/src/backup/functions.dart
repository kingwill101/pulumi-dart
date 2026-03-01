import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_framework_args.dart';
import 'get_framework_result.dart';
import 'get_plan_args.dart';
import 'get_plan_result.dart';
import 'get_report_plan_args.dart';
import 'get_report_plan_result.dart';
import 'get_selection_args.dart';
import 'get_selection_result.dart';
import 'get_vault_args.dart';
import 'get_vault_result.dart';

/// Use this data source to get information on an existing backup framework.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.backup.getFramework({
///     name: "my_example_backup_framework_name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.backup.get_framework(name="my_example_backup_framework_name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Backup.GetFramework.Invoke(new()
///     {
///         Name = "my_example_backup_framework_name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/backup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := backup.LookupFramework(ctx, &backup.LookupFrameworkArgs{
/// 			Name: "my_example_backup_framework_name",
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
/// import com.pulumi.aws.backup.BackupFunctions;
/// import com.pulumi.aws.backup.inputs.GetFrameworkArgs;
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
///         final var example = BackupFunctions.getFramework(GetFrameworkArgs.builder()
///             .name("my_example_backup_framework_name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:backup:getFramework
///       arguments:
///         name: my_example_backup_framework_name
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_backup_get_framework_get_framework_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFrameworkResult> getFramework(
  GetFrameworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:backup/getFramework:getFramework',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFrameworkResult.fromMap(result);
}

/// Use this data source to get information on an existing backup plan.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.backup.getPlan({
///     planId: "my_example_backup_plan_id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.backup.get_plan(plan_id="my_example_backup_plan_id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Backup.GetPlan.Invoke(new()
///     {
///         PlanId = "my_example_backup_plan_id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/backup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := backup.LookupPlan(ctx, &backup.LookupPlanArgs{
/// 			PlanId: "my_example_backup_plan_id",
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
/// import com.pulumi.aws.backup.BackupFunctions;
/// import com.pulumi.aws.backup.inputs.GetPlanArgs;
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
///         final var example = BackupFunctions.getPlan(GetPlanArgs.builder()
///             .planId("my_example_backup_plan_id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:backup:getPlan
///       arguments:
///         planId: my_example_backup_plan_id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_backup_get_plan_get_plan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPlanResult> getPlan(
  GetPlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:backup/getPlan:getPlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPlanResult.fromMap(result);
}

/// Use this data source to get information on an existing backup report plan.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.backup.getReportPlan({
///     name: "my_example_backup_report_plan_name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.backup.get_report_plan(name="my_example_backup_report_plan_name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Backup.GetReportPlan.Invoke(new()
///     {
///         Name = "my_example_backup_report_plan_name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/backup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := backup.LookupReportPlan(ctx, &backup.LookupReportPlanArgs{
/// 			Name: "my_example_backup_report_plan_name",
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
/// import com.pulumi.aws.backup.BackupFunctions;
/// import com.pulumi.aws.backup.inputs.GetReportPlanArgs;
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
///         final var example = BackupFunctions.getReportPlan(GetReportPlanArgs.builder()
///             .name("my_example_backup_report_plan_name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:backup:getReportPlan
///       arguments:
///         name: my_example_backup_report_plan_name
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_backup_get_report_plan_get_report_plan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReportPlanResult> getReportPlan(
  GetReportPlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:backup/getReportPlan:getReportPlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReportPlanResult.fromMap(result);
}

/// Use this data source to get information on an existing backup selection.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.backup.getSelection({
///     planId: exampleAwsBackupPlan.id,
///     selectionId: "selection-id-example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.backup.get_selection(plan_id=example_aws_backup_plan["id"],
///     selection_id="selection-id-example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Backup.GetSelection.Invoke(new()
///     {
///         PlanId = exampleAwsBackupPlan.Id,
///         SelectionId = "selection-id-example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/backup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := backup.LookupSelection(ctx, &backup.LookupSelectionArgs{
/// 			PlanId:      exampleAwsBackupPlan.Id,
/// 			SelectionId: "selection-id-example",
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
/// import com.pulumi.aws.backup.BackupFunctions;
/// import com.pulumi.aws.backup.inputs.GetSelectionArgs;
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
///         final var example = BackupFunctions.getSelection(GetSelectionArgs.builder()
///             .planId(exampleAwsBackupPlan.id())
///             .selectionId("selection-id-example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:backup:getSelection
///       arguments:
///         planId: ${exampleAwsBackupPlan.id}
///         selectionId: selection-id-example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_backup_get_selection_get_selection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSelectionResult> getSelection(
  GetSelectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:backup/getSelection:getSelection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSelectionResult.fromMap(result);
}

/// Use this data source to get information on an existing backup vault.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.backup.getVault({
///     name: "example_backup_vault",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.backup.get_vault(name="example_backup_vault")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Backup.GetVault.Invoke(new()
///     {
///         Name = "example_backup_vault",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/backup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := backup.LookupVault(ctx, &backup.LookupVaultArgs{
/// 			Name: "example_backup_vault",
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
/// import com.pulumi.aws.backup.BackupFunctions;
/// import com.pulumi.aws.backup.inputs.GetVaultArgs;
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
///         final var example = BackupFunctions.getVault(GetVaultArgs.builder()
///             .name("example_backup_vault")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:backup:getVault
///       arguments:
///         name: example_backup_vault
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_backup_get_vault_get_vault_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVaultResult> getVault(
  GetVaultArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:backup/getVault:getVault',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVaultResult.fromMap(result);
}
