import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_industrial_pid_loops_args.dart';
import 'get_industrial_pid_loops_result.dart';
import 'get_industrial_pid_organizations_args.dart';
import 'get_industrial_pid_organizations_result.dart';
import 'get_industrial_pid_projects_args.dart';
import 'get_industrial_pid_projects_result.dart';
import 'get_industrial_serice_args.dart';
import 'get_industrial_serice_result.dart';

/// This data source provides the Brain Industrial Pid Loops of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.117.0.
///
/// > **DEPRECATED:**  This data source has been deprecated from version `1.229.1`.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.brain.getIndustrialPidLoops({
///     pidProjectId: "856c6b8f-ca63-40a4-xxxx-xxxx",
///     ids: ["742a3d4e-d8b0-47c8-xxxx-xxxx"],
///     nameRegex: "tf-testACC",
/// });
/// export const firstBrainIndustrialPidLoopId = example.then(example => example.loops?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.brain.get_industrial_pid_loops(pid_project_id="856c6b8f-ca63-40a4-xxxx-xxxx",
///     ids=["742a3d4e-d8b0-47c8-xxxx-xxxx"],
///     name_regex="tf-testACC")
/// pulumi.export("firstBrainIndustrialPidLoopId", example.loops[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Brain.GetIndustrialPidLoops.Invoke(new()
///     {
///         PidProjectId = "856c6b8f-ca63-40a4-xxxx-xxxx",
///         Ids = new[]
///         {
///             "742a3d4e-d8b0-47c8-xxxx-xxxx",
///         },
///         NameRegex = "tf-testACC",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstBrainIndustrialPidLoopId"] = example.Apply(getIndustrialPidLoopsResult => getIndustrialPidLoopsResult.Loops[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/brain"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := brain.GetIndustrialPidLoops(ctx, &brain.GetIndustrialPidLoopsArgs{
/// 			PidProjectId: "856c6b8f-ca63-40a4-xxxx-xxxx",
/// 			Ids: []string{
/// 				"742a3d4e-d8b0-47c8-xxxx-xxxx",
/// 			},
/// 			NameRegex: pulumi.StringRef("tf-testACC"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstBrainIndustrialPidLoopId", example.Loops[0].Id)
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
/// import com.pulumi.alicloud.brain.BrainFunctions;
/// import com.pulumi.alicloud.brain.inputs.GetIndustrialPidLoopsArgs;
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
///         final var example = BrainFunctions.getIndustrialPidLoops(GetIndustrialPidLoopsArgs.builder()
///             .pidProjectId("856c6b8f-ca63-40a4-xxxx-xxxx")
///             .ids("742a3d4e-d8b0-47c8-xxxx-xxxx")
///             .nameRegex("tf-testACC")
///             .build());
///
///         ctx.export("firstBrainIndustrialPidLoopId", example.loops()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:brain:getIndustrialPidLoops
///       arguments:
///         pidProjectId: 856c6b8f-ca63-40a4-xxxx-xxxx
///         ids:
///           - 742a3d4e-d8b0-47c8-xxxx-xxxx
///         nameRegex: tf-testACC
/// outputs:
///   firstBrainIndustrialPidLoopId: ${example.loops[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_brain_get_industrial_pid_loops_get_industrial_pid_loops_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIndustrialPidLoopsResult> getIndustrialPidLoops(
  GetIndustrialPidLoopsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:brain/getIndustrialPidLoops:getIndustrialPidLoops',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIndustrialPidLoopsResult.fromMap(result);
}

/// This data source provides the Brain Industrial Pid Organizations of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.113.0.
///
/// > **DEPRECATED:**  This data source has been deprecated from version `1.229.1`.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.brain.getIndustrialPidOrganizations({
///     ids: ["3e74e684-cbb5-xxxx"],
///     nameRegex: "tf-testAcc",
/// });
/// export const firstBrainIndustrialPidOrganizationId = example.then(example => example.organizations?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.brain.get_industrial_pid_organizations(ids=["3e74e684-cbb5-xxxx"],
///     name_regex="tf-testAcc")
/// pulumi.export("firstBrainIndustrialPidOrganizationId", example.organizations[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Brain.GetIndustrialPidOrganizations.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "3e74e684-cbb5-xxxx",
///         },
///         NameRegex = "tf-testAcc",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstBrainIndustrialPidOrganizationId"] = example.Apply(getIndustrialPidOrganizationsResult => getIndustrialPidOrganizationsResult.Organizations[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/brain"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := brain.GetIndustrialPidOrganizations(ctx, &brain.GetIndustrialPidOrganizationsArgs{
/// 			Ids: []string{
/// 				"3e74e684-cbb5-xxxx",
/// 			},
/// 			NameRegex: pulumi.StringRef("tf-testAcc"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstBrainIndustrialPidOrganizationId", example.Organizations[0].Id)
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
/// import com.pulumi.alicloud.brain.BrainFunctions;
/// import com.pulumi.alicloud.brain.inputs.GetIndustrialPidOrganizationsArgs;
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
///         final var example = BrainFunctions.getIndustrialPidOrganizations(GetIndustrialPidOrganizationsArgs.builder()
///             .ids("3e74e684-cbb5-xxxx")
///             .nameRegex("tf-testAcc")
///             .build());
///
///         ctx.export("firstBrainIndustrialPidOrganizationId", example.organizations()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:brain:getIndustrialPidOrganizations
///       arguments:
///         ids:
///           - 3e74e684-cbb5-xxxx
///         nameRegex: tf-testAcc
/// outputs:
///   firstBrainIndustrialPidOrganizationId: ${example.organizations[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_brain_get_industrial_pid_organizations_get_industrial_pid_organizations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIndustrialPidOrganizationsResult> getIndustrialPidOrganizations(
  GetIndustrialPidOrganizationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:brain/getIndustrialPidOrganizations:getIndustrialPidOrganizations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIndustrialPidOrganizationsResult.fromMap(result);
}

/// This data source provides the Brain Industrial Pid Projects of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.113.0.
///
/// > **DEPRECATED:**  This data source has been deprecated from version `1.229.1`.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.brain.getIndustrialPidProjects({
///     ids: ["3e74e684-cbb5-xxxx"],
///     nameRegex: "tf-testAcc",
/// });
/// export const firstBrainIndustrialPidProjectId = example.then(example => example.projects?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.brain.get_industrial_pid_projects(ids=["3e74e684-cbb5-xxxx"],
///     name_regex="tf-testAcc")
/// pulumi.export("firstBrainIndustrialPidProjectId", example.projects[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Brain.GetIndustrialPidProjects.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "3e74e684-cbb5-xxxx",
///         },
///         NameRegex = "tf-testAcc",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstBrainIndustrialPidProjectId"] = example.Apply(getIndustrialPidProjectsResult => getIndustrialPidProjectsResult.Projects[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/brain"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := brain.GetIndustrialPidProjects(ctx, &brain.GetIndustrialPidProjectsArgs{
/// 			Ids: []string{
/// 				"3e74e684-cbb5-xxxx",
/// 			},
/// 			NameRegex: pulumi.StringRef("tf-testAcc"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstBrainIndustrialPidProjectId", example.Projects[0].Id)
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
/// import com.pulumi.alicloud.brain.BrainFunctions;
/// import com.pulumi.alicloud.brain.inputs.GetIndustrialPidProjectsArgs;
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
///         final var example = BrainFunctions.getIndustrialPidProjects(GetIndustrialPidProjectsArgs.builder()
///             .ids("3e74e684-cbb5-xxxx")
///             .nameRegex("tf-testAcc")
///             .build());
///
///         ctx.export("firstBrainIndustrialPidProjectId", example.projects()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:brain:getIndustrialPidProjects
///       arguments:
///         ids:
///           - 3e74e684-cbb5-xxxx
///         nameRegex: tf-testAcc
/// outputs:
///   firstBrainIndustrialPidProjectId: ${example.projects[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_brain_get_industrial_pid_projects_get_industrial_pid_projects_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIndustrialPidProjectsResult> getIndustrialPidProjects(
  GetIndustrialPidProjectsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:brain/getIndustrialPidProjects:getIndustrialPidProjects',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIndustrialPidProjectsResult.fromMap(result);
}

/// Using this data source can open Brain Industrial service automatically. If the service has been opened, it will return opened.
///
/// > **NOTE:** Available since v1.115.0.
///
/// > **NOTE:** The Brain Industrial service is not support in the international site.
///
/// > **DEPRECATED:**  This data source has been deprecated from version `1.229.1`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.brain.getIndustrialSerice({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.brain.get_industrial_serice(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.Brain.GetIndustrialSerice.Invoke(new()
///     {
///         Enable = "On",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/brain"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := brain.GetIndustrialSerice(ctx, &brain.GetIndustrialSericeArgs{
/// 			Enable: pulumi.StringRef("On"),
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
/// import com.pulumi.alicloud.brain.BrainFunctions;
/// import com.pulumi.alicloud.brain.inputs.GetIndustrialSericeArgs;
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
///         final var open = BrainFunctions.getIndustrialSerice(GetIndustrialSericeArgs.builder()
///             .enable("On")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   open:
///     fn::invoke:
///       function: alicloud:brain:getIndustrialSerice
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_brain_get_industrial_serice_get_industrial_serice_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIndustrialSericeResult> getIndustrialSerice(
  GetIndustrialSericeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:brain/getIndustrialSerice:getIndustrialSerice',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIndustrialSericeResult.fromMap(result);
}
