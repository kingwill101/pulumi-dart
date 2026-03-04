import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_groups_args.dart';
import 'get_application_groups_result.dart';
import 'get_applications_args.dart';
import 'get_applications_result.dart';
import 'get_executions_args.dart';
import 'get_executions_result.dart';
import 'get_parameters_args.dart';
import 'get_parameters_result.dart';
import 'get_patch_baselines_args.dart';
import 'get_patch_baselines_result.dart';
import 'get_secret_parameters_args.dart';
import 'get_secret_parameters_result.dart';
import 'get_state_configurations_args.dart';
import 'get_state_configurations_result.dart';
import 'get_templates_args.dart';
import 'get_templates_result.dart';

/// This data source provides the Oos Application Groups of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.146.0+.
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
/// const ids = alicloud.oos.getApplicationGroups({
///     applicationName: "example_value",
///     ids: [
///         "my-ApplicationGroup-1",
///         "my-ApplicationGroup-2",
///     ],
/// });
/// export const oosApplicationGroupId1 = ids.then(ids => ids.groups?.[0]?.id);
/// const nameRegex = alicloud.oos.getApplicationGroups({
///     applicationName: "example_value",
///     nameRegex: "^my-ApplicationGroup",
/// });
/// export const oosApplicationGroupId2 = nameRegex.then(nameRegex => nameRegex.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.oos.get_application_groups(application_name="example_value",
///     ids=[
///         "my-ApplicationGroup-1",
///         "my-ApplicationGroup-2",
///     ])
/// pulumi.export("oosApplicationGroupId1", ids.groups[0].id)
/// name_regex = alicloud.oos.get_application_groups(application_name="example_value",
///     name_regex="^my-ApplicationGroup")
/// pulumi.export("oosApplicationGroupId2", name_regex.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Oos.GetApplicationGroups.Invoke(new()
///     {
///         ApplicationName = "example_value",
///         Ids = new[]
///         {
///             "my-ApplicationGroup-1",
///             "my-ApplicationGroup-2",
///         },
///     });
///
///     var nameRegex = AliCloud.Oos.GetApplicationGroups.Invoke(new()
///     {
///         ApplicationName = "example_value",
///         NameRegex = "^my-ApplicationGroup",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["oosApplicationGroupId1"] = ids.Apply(getApplicationGroupsResult => getApplicationGroupsResult.Groups[0]?.Id),
///         ["oosApplicationGroupId2"] = nameRegex.Apply(getApplicationGroupsResult => getApplicationGroupsResult.Groups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oos"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := oos.GetApplicationGroups(ctx, &oos.GetApplicationGroupsArgs{
/// 			ApplicationName: "example_value",
/// 			Ids: []string{
/// 				"my-ApplicationGroup-1",
/// 				"my-ApplicationGroup-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("oosApplicationGroupId1", ids.Groups[0].Id)
/// 		nameRegex, err := oos.GetApplicationGroups(ctx, &oos.GetApplicationGroupsArgs{
/// 			ApplicationName: "example_value",
/// 			NameRegex:       pulumi.StringRef("^my-ApplicationGroup"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("oosApplicationGroupId2", nameRegex.Groups[0].Id)
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
/// import com.pulumi.alicloud.oos.OosFunctions;
/// import com.pulumi.alicloud.oos.inputs.GetApplicationGroupsArgs;
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
///         final var ids = OosFunctions.getApplicationGroups(GetApplicationGroupsArgs.builder()
///             .applicationName("example_value")
///             .ids(
///                 "my-ApplicationGroup-1",
///                 "my-ApplicationGroup-2")
///             .build());
///
///         ctx.export("oosApplicationGroupId1", ids.groups()[0].id());
///         final var nameRegex = OosFunctions.getApplicationGroups(GetApplicationGroupsArgs.builder()
///             .applicationName("example_value")
///             .nameRegex("^my-ApplicationGroup")
///             .build());
///
///         ctx.export("oosApplicationGroupId2", nameRegex.groups()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:oos:getApplicationGroups
///       arguments:
///         applicationName: example_value
///         ids:
///           - my-ApplicationGroup-1
///           - my-ApplicationGroup-2
///   nameRegex:
///     fn::invoke:
///       function: alicloud:oos:getApplicationGroups
///       arguments:
///         applicationName: example_value
///         nameRegex: ^my-ApplicationGroup
/// outputs:
///   oosApplicationGroupId1: ${ids.groups[0].id}
///   oosApplicationGroupId2: ${nameRegex.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_oos_get_application_groups_get_application_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationGroupsResult> getApplicationGroups(
  GetApplicationGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:oos/getApplicationGroups:getApplicationGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationGroupsResult.fromMap(result);
}

/// This data source provides the Oos Applications of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.145.0+.
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
/// const ids = alicloud.oos.getApplications({});
/// export const oosApplicationId1 = ids.then(ids => ids.applications?.[0]?.id);
/// const nameRegex = alicloud.oos.getApplications({
///     nameRegex: "^my-Application",
/// });
/// export const oosApplicationId2 = nameRegex.then(nameRegex => nameRegex.applications?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.oos.get_applications()
/// pulumi.export("oosApplicationId1", ids.applications[0].id)
/// name_regex = alicloud.oos.get_applications(name_regex="^my-Application")
/// pulumi.export("oosApplicationId2", name_regex.applications[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Oos.GetApplications.Invoke();
///
///     var nameRegex = AliCloud.Oos.GetApplications.Invoke(new()
///     {
///         NameRegex = "^my-Application",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["oosApplicationId1"] = ids.Apply(getApplicationsResult => getApplicationsResult.Applications[0]?.Id),
///         ["oosApplicationId2"] = nameRegex.Apply(getApplicationsResult => getApplicationsResult.Applications[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oos"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := oos.GetApplications(ctx, &oos.GetApplicationsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("oosApplicationId1", ids.Applications[0].Id)
/// 		nameRegex, err := oos.GetApplications(ctx, &oos.GetApplicationsArgs{
/// 			NameRegex: pulumi.StringRef("^my-Application"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("oosApplicationId2", nameRegex.Applications[0].Id)
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
/// import com.pulumi.alicloud.oos.OosFunctions;
/// import com.pulumi.alicloud.oos.inputs.GetApplicationsArgs;
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
///         final var ids = OosFunctions.getApplications(GetApplicationsArgs.builder()
///             .build());
///
///         ctx.export("oosApplicationId1", ids.applications()[0].id());
///         final var nameRegex = OosFunctions.getApplications(GetApplicationsArgs.builder()
///             .nameRegex("^my-Application")
///             .build());
///
///         ctx.export("oosApplicationId2", nameRegex.applications()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:oos:getApplications
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:oos:getApplications
///       arguments:
///         nameRegex: ^my-Application
/// outputs:
///   oosApplicationId1: ${ids.applications[0].id}
///   oosApplicationId2: ${nameRegex.applications[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_oos_get_applications_get_applications_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationsResult> getApplications(
  GetApplicationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:oos/getApplications:getApplications',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationsResult.fromMap(result);
}

/// This data source provides a list of OOS Executions in an Alibaba Cloud account according to the specified filters.
///
/// &gt; **NOTE:** Available in v1.93.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const example = alicloud.oos.getExecutions({
///     ids: ["execution_id"],
///     templateName: "name",
///     status: "Success",
/// });
/// export const firstExecutionId = example.then(example => example.executions?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// example = alicloud.oos.get_executions(ids=["execution_id"],
///     template_name="name",
///     status="Success")
/// pulumi.export("firstExecutionId", example.executions[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var example = AliCloud.Oos.GetExecutions.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "execution_id",
///         },
///         TemplateName = "name",
///         Status = "Success",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstExecutionId"] = example.Apply(getExecutionsResult => getExecutionsResult.Executions[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oos"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		example, err := oos.GetExecutions(ctx, &oos.GetExecutionsArgs{
/// 			Ids: []string{
/// 				"execution_id",
/// 			},
/// 			TemplateName: pulumi.StringRef("name"),
/// 			Status:       pulumi.StringRef("Success"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstExecutionId", example.Executions[0].Id)
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
/// import com.pulumi.alicloud.oos.OosFunctions;
/// import com.pulumi.alicloud.oos.inputs.GetExecutionsArgs;
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
///         // Declare the data source
///         final var example = OosFunctions.getExecutions(GetExecutionsArgs.builder()
///             .ids("execution_id")
///             .templateName("name")
///             .status("Success")
///             .build());
///
///         ctx.export("firstExecutionId", example.executions()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Declare the data source
///   example:
///     fn::invoke:
///       function: alicloud:oos:getExecutions
///       arguments:
///         ids:
///           - execution_id
///         templateName: name
///         status: Success
/// outputs:
///   firstExecutionId: ${example.executions[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_oos_get_executions_get_executions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExecutionsResult> getExecutions(
  GetExecutionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:oos/getExecutions:getExecutions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExecutionsResult.fromMap(result);
}

/// This data source provides the Oos Parameters of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.147.0.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.oos.Parameter("default", {
///     parameterName: name,
///     value: "tf-testacc-oos_parameter",
///     type: "String",
///     description: name,
///     constraints: `  {
///     \\"AllowedValues\\": [
///         \\"tf-testacc-oos_parameter\\"
///     ],
///     \\"AllowedPattern\\": \\"tf-testacc-oos_parameter\\",
///     \\"MinLength\\": 1,
///     \\"MaxLength\\": 100
///   }
/// `,
///     tags: {
///         Created: "TF",
///         For: "Parameter",
///     },
/// });
/// const ids = alicloud.oos.getParametersOutput({
///     ids: [_default.id],
/// });
/// export const oosSecretParameterId0 = ids.apply(ids => ids.parameters?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.oos.Parameter("default",
///     parameter_name=name,
///     value="tf-testacc-oos_parameter",
///     type="String",
///     description=name,
///     constraints="""  {
///     \"AllowedValues\": [
///         \"tf-testacc-oos_parameter\"
///     ],
///     \"AllowedPattern\": \"tf-testacc-oos_parameter\",
///     \"MinLength\": 1,
///     \"MaxLength\": 100
///   }
/// """,
///     tags={
///         "Created": "TF",
///         "For": "Parameter",
///     })
/// ids = alicloud.oos.get_parameters_output(ids=[default.id])
/// pulumi.export("oosSecretParameterId0", ids.parameters[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.Oos.Parameter("default", new()
///     {
///         ParameterName = name,
///         Value = "tf-testacc-oos_parameter",
///         Type = "String",
///         Description = name,
///         Constraints = @"  {
///     \""AllowedValues\"": [
///         \""tf-testacc-oos_parameter\""
///     ],
///     \""AllowedPattern\"": \""tf-testacc-oos_parameter\"",
///     \""MinLength\"": 1,
///     \""MaxLength\"": 100
///   }
/// ",
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "Parameter" },
///         },
///     });
///
///     var ids = AliCloud.Oos.GetParameters.Invoke(new()
///     {
///         Ids = new[]
///         {
///             @default.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["oosSecretParameterId0"] = ids.Apply(getParametersResult => getParametersResult.Parameters[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oos"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := oos.NewParameter(ctx, "default", &oos.ParameterArgs{
/// 			ParameterName: pulumi.String(name),
/// 			Value:         pulumi.String("tf-testacc-oos_parameter"),
/// 			Type:          pulumi.String("String"),
/// 			Description:   pulumi.String(name),
/// 			Constraints: pulumi.String(`  {
///     \"AllowedValues\": [
///         \"tf-testacc-oos_parameter\"
///     ],
///     \"AllowedPattern\": \"tf-testacc-oos_parameter\",
///     \"MinLength\": 1,
///     \"MaxLength\": 100
///   }
/// `),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("Parameter"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := oos.GetParametersOutput(ctx, oos.GetParametersOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				_default.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("oosSecretParameterId0", ids.ApplyT(func(ids oos.GetParametersResult) (*string, error) {
/// 			return &ids.Parameters[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.oos.Parameter;
/// import com.pulumi.alicloud.oos.ParameterArgs;
/// import com.pulumi.alicloud.oos.OosFunctions;
/// import com.pulumi.alicloud.oos.inputs.GetParametersArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new Parameter("default", ParameterArgs.builder()
///             .parameterName(name)
///             .value("tf-testacc-oos_parameter")
///             .type("String")
///             .description(name)
///             .constraints("""
///   {
///     \"AllowedValues\": [
///         \"tf-testacc-oos_parameter\"
///     ],
///     \"AllowedPattern\": \"tf-testacc-oos_parameter\",
///     \"MinLength\": 1,
///     \"MaxLength\": 100
///   }
///             """)
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "Parameter")
///             ))
///             .build());
///
///         final var ids = OosFunctions.getParameters(GetParametersArgs.builder()
///             .ids(default_.id())
///             .build());
///
///         ctx.export("oosSecretParameterId0", ids.applyValue(_ids -> _ids.parameters()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:oos:Parameter
///     properties:
///       parameterName: ${name}
///       value: tf-testacc-oos_parameter
///       type: String
///       description: ${name}
///       constraints: |2
///           {
///             \"AllowedValues\": [
///                 \"tf-testacc-oos_parameter\"
///             ],
///             \"AllowedPattern\": \"tf-testacc-oos_parameter\",
///             \"MinLength\": 1,
///             \"MaxLength\": 100
///           }
///       tags:
///         Created: TF
///         For: Parameter
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:oos:getParameters
///       arguments:
///         ids:
///           - ${default.id}
/// outputs:
///   oosSecretParameterId0: ${ids.parameters[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_oos_get_parameters_get_parameters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetParametersResult> getParameters(
  GetParametersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:oos/getParameters:getParameters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetParametersResult.fromMap(result);
}

/// This data source provides the Oos Patch Baselines of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.146.0+.
/// [args] Arguments passed to this invoke. {@macro pulumi_oos_get_patch_baselines_get_patch_baselines_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPatchBaselinesResult> getPatchBaselines(
  GetPatchBaselinesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:oos/getPatchBaselines:getPatchBaselines',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPatchBaselinesResult.fromMap(result);
}

/// This data source provides the Oos Secret Parameters of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.147.0.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.oos.SecretParameter("default", {
///     secretParameterName: name,
///     value: "tf-testacc-oos_secret_parameter",
///     type: "Secret",
///     description: name,
///     constraints: `  {
///     \\"AllowedValues\\": [
///         \\"tf-testacc-oos_secret_parameter\\"
///     ],
///     \\"AllowedPattern\\": \\"tf-testacc-oos_secret_parameter\\",
///     \\"MinLength\\": 1,
///     \\"MaxLength\\": 100
///   }
/// `,
///     tags: {
///         Created: "TF",
///         For: "SecretParameter",
///     },
/// });
/// const ids = alicloud.oos.getSecretParametersOutput({
///     ids: [_default.id],
/// });
/// export const oosSecretParameterId0 = ids.apply(ids => ids.parameters?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.oos.SecretParameter("default",
///     secret_parameter_name=name,
///     value="tf-testacc-oos_secret_parameter",
///     type="Secret",
///     description=name,
///     constraints="""  {
///     \"AllowedValues\": [
///         \"tf-testacc-oos_secret_parameter\"
///     ],
///     \"AllowedPattern\": \"tf-testacc-oos_secret_parameter\",
///     \"MinLength\": 1,
///     \"MaxLength\": 100
///   }
/// """,
///     tags={
///         "Created": "TF",
///         "For": "SecretParameter",
///     })
/// ids = alicloud.oos.get_secret_parameters_output(ids=[default.id])
/// pulumi.export("oosSecretParameterId0", ids.parameters[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.Oos.SecretParameter("default", new()
///     {
///         SecretParameterName = name,
///         Value = "tf-testacc-oos_secret_parameter",
///         Type = "Secret",
///         Description = name,
///         Constraints = @"  {
///     \""AllowedValues\"": [
///         \""tf-testacc-oos_secret_parameter\""
///     ],
///     \""AllowedPattern\"": \""tf-testacc-oos_secret_parameter\"",
///     \""MinLength\"": 1,
///     \""MaxLength\"": 100
///   }
/// ",
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "SecretParameter" },
///         },
///     });
///
///     var ids = AliCloud.Oos.GetSecretParameters.Invoke(new()
///     {
///         Ids = new[]
///         {
///             @default.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["oosSecretParameterId0"] = ids.Apply(getSecretParametersResult => getSecretParametersResult.Parameters[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oos"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := oos.NewSecretParameter(ctx, "default", &oos.SecretParameterArgs{
/// 			SecretParameterName: pulumi.String(name),
/// 			Value:               pulumi.String("tf-testacc-oos_secret_parameter"),
/// 			Type:                pulumi.String("Secret"),
/// 			Description:         pulumi.String(name),
/// 			Constraints: pulumi.String(`  {
///     \"AllowedValues\": [
///         \"tf-testacc-oos_secret_parameter\"
///     ],
///     \"AllowedPattern\": \"tf-testacc-oos_secret_parameter\",
///     \"MinLength\": 1,
///     \"MaxLength\": 100
///   }
/// `),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("SecretParameter"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := oos.GetSecretParametersOutput(ctx, oos.GetSecretParametersOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				_default.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("oosSecretParameterId0", ids.ApplyT(func(ids oos.GetSecretParametersResult) (*string, error) {
/// 			return &ids.Parameters[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.oos.SecretParameter;
/// import com.pulumi.alicloud.oos.SecretParameterArgs;
/// import com.pulumi.alicloud.oos.OosFunctions;
/// import com.pulumi.alicloud.oos.inputs.GetSecretParametersArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new SecretParameter("default", SecretParameterArgs.builder()
///             .secretParameterName(name)
///             .value("tf-testacc-oos_secret_parameter")
///             .type("Secret")
///             .description(name)
///             .constraints("""
///   {
///     \"AllowedValues\": [
///         \"tf-testacc-oos_secret_parameter\"
///     ],
///     \"AllowedPattern\": \"tf-testacc-oos_secret_parameter\",
///     \"MinLength\": 1,
///     \"MaxLength\": 100
///   }
///             """)
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "SecretParameter")
///             ))
///             .build());
///
///         final var ids = OosFunctions.getSecretParameters(GetSecretParametersArgs.builder()
///             .ids(default_.id())
///             .build());
///
///         ctx.export("oosSecretParameterId0", ids.applyValue(_ids -> _ids.parameters()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:oos:SecretParameter
///     properties:
///       secretParameterName: ${name}
///       value: tf-testacc-oos_secret_parameter
///       type: Secret
///       description: ${name}
///       constraints: |2
///           {
///             \"AllowedValues\": [
///                 \"tf-testacc-oos_secret_parameter\"
///             ],
///             \"AllowedPattern\": \"tf-testacc-oos_secret_parameter\",
///             \"MinLength\": 1,
///             \"MaxLength\": 100
///           }
///       tags:
///         Created: TF
///         For: SecretParameter
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:oos:getSecretParameters
///       arguments:
///         ids:
///           - ${default.id}
/// outputs:
///   oosSecretParameterId0: ${ids.parameters[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_oos_get_secret_parameters_get_secret_parameters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretParametersResult> getSecretParameters(
  GetSecretParametersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:oos/getSecretParameters:getSecretParameters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretParametersResult.fromMap(result);
}

/// This data source provides the Oos State Configurations of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.147.0+.
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
/// const ids = alicloud.oos.getStateConfigurations({});
/// export const oosStateConfigurationId1 = ids.then(ids => ids.configurations?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.oos.get_state_configurations()
/// pulumi.export("oosStateConfigurationId1", ids.configurations[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Oos.GetStateConfigurations.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["oosStateConfigurationId1"] = ids.Apply(getStateConfigurationsResult => getStateConfigurationsResult.Configurations[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oos"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := oos.GetStateConfigurations(ctx, &oos.GetStateConfigurationsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("oosStateConfigurationId1", ids.Configurations[0].Id)
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
/// import com.pulumi.alicloud.oos.OosFunctions;
/// import com.pulumi.alicloud.oos.inputs.GetStateConfigurationsArgs;
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
///         final var ids = OosFunctions.getStateConfigurations(GetStateConfigurationsArgs.builder()
///             .build());
///
///         ctx.export("oosStateConfigurationId1", ids.configurations()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:oos:getStateConfigurations
///       arguments: {}
/// outputs:
///   oosStateConfigurationId1: ${ids.configurations[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_oos_get_state_configurations_get_state_configurations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStateConfigurationsResult> getStateConfigurations(
  GetStateConfigurationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:oos/getStateConfigurations:getStateConfigurations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStateConfigurationsResult.fromMap(result);
}

/// This data source provides a list of OOS Templates in an Alibaba Cloud account according to the specified filters.
///
/// &gt; **NOTE:** Available in v1.92.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const example = alicloud.oos.getTemplates({
///     nameRegex: "test",
///     tags: {
///         Created: "TF",
///         For: "template Test",
///     },
///     shareType: "Private",
///     hasTrigger: false,
/// });
/// export const firstTemplateName = example.then(example => example.templates?.[0]?.templateName);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// example = alicloud.oos.get_templates(name_regex="test",
///     tags={
///         "Created": "TF",
///         "For": "template Test",
///     },
///     share_type="Private",
///     has_trigger=False)
/// pulumi.export("firstTemplateName", example.templates[0].template_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var example = AliCloud.Oos.GetTemplates.Invoke(new()
///     {
///         NameRegex = "test",
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "template Test" },
///         },
///         ShareType = "Private",
///         HasTrigger = false,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstTemplateName"] = example.Apply(getTemplatesResult => getTemplatesResult.Templates[0]?.TemplateName),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oos"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		example, err := oos.GetTemplates(ctx, &oos.GetTemplatesArgs{
/// 			NameRegex: pulumi.StringRef("test"),
/// 			Tags: map[string]interface{}{
/// 				"Created": "TF",
/// 				"For":     "template Test",
/// 			},
/// 			ShareType:  pulumi.StringRef("Private"),
/// 			HasTrigger: pulumi.BoolRef(false),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstTemplateName", example.Templates[0].TemplateName)
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
/// import com.pulumi.alicloud.oos.OosFunctions;
/// import com.pulumi.alicloud.oos.inputs.GetTemplatesArgs;
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
///         // Declare the data source
///         final var example = OosFunctions.getTemplates(GetTemplatesArgs.builder()
///             .nameRegex("test")
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "template Test")
///             ))
///             .shareType("Private")
///             .hasTrigger(false)
///             .build());
///
///         ctx.export("firstTemplateName", example.templates()[0].templateName());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Declare the data source
///   example:
///     fn::invoke:
///       function: alicloud:oos:getTemplates
///       arguments:
///         nameRegex: test
///         tags:
///           Created: TF
///           For: template Test
///         shareType: Private
///         hasTrigger: false
/// outputs:
///   firstTemplateName: ${example.templates[0].templateName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_oos_get_templates_get_templates_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTemplatesResult> getTemplates(
  GetTemplatesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:oos/getTemplates:getTemplates',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTemplatesResult.fromMap(result);
}
