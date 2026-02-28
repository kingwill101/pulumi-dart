import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_config_args.dart';
import 'get_config_iam_policy_args.dart';
import 'get_config_iam_policy_result.dart';
import 'get_config_result.dart';
import 'get_variable_args.dart';
import 'get_variable_result.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const run_service = gcp.runtimeconfig.getConfig({
///     name: "my-service",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// run_service = gcp.runtimeconfig.get_config(name="my-service")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var run_service = Gcp.RuntimeConfig.GetConfig.Invoke(new()
///     {
///         Name = "my-service",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/runtimeconfig"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := runtimeconfig.LookupConfig(ctx, &runtimeconfig.LookupConfigArgs{
/// 			Name: "my-service",
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
/// import com.pulumi.gcp.runtimeconfig.RuntimeconfigFunctions;
/// import com.pulumi.gcp.runtimeconfig.inputs.GetConfigArgs;
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
///         final var run-service = RuntimeconfigFunctions.getConfig(GetConfigArgs.builder()
///             .name("my-service")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   run-service:
///     fn::invoke:
///       function: gcp:runtimeconfig:getConfig
///       arguments:
///         name: my-service
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_runtimeconfig_get_config_get_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigResult> getConfig(
  GetConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:runtimeconfig/getConfig:getConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigResult.fromMap(result);
}

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.runtimeconfig.getConfigIamPolicy({
///     project: config.project,
///     config: config.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.runtimeconfig.get_config_iam_policy(project=config["project"],
///     config=config["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.RuntimeConfig.GetConfigIamPolicy.Invoke(new()
///     {
///         Project = config.Project,
///         Config = config.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/runtimeconfig"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := runtimeconfig.LookupConfigIamPolicy(ctx, &runtimeconfig.LookupConfigIamPolicyArgs{
/// 			Project: pulumi.StringRef(config.Project),
/// 			Config:  config.Name,
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
/// import com.pulumi.gcp.runtimeconfig.RuntimeconfigFunctions;
/// import com.pulumi.gcp.runtimeconfig.inputs.GetConfigIamPolicyArgs;
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
///         final var policy = RuntimeconfigFunctions.getConfigIamPolicy(GetConfigIamPolicyArgs.builder()
///             .project(config.project())
///             .config(config.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:runtimeconfig:getConfigIamPolicy
///       arguments:
///         project: ${config.project}
///         config: ${config.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_runtimeconfig_get_config_iam_policy_get_config_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigIamPolicyResult> getConfigIamPolicy(
  GetConfigIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:runtimeconfig/getConfigIamPolicy:getConfigIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigIamPolicyResult.fromMap(result);
}

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const run_service = gcp.runtimeconfig.getVariable({
///     parent: "my-service",
///     name: "prod-variables/hostname",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// run_service = gcp.runtimeconfig.get_variable(parent="my-service",
///     name="prod-variables/hostname")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var run_service = Gcp.RuntimeConfig.GetVariable.Invoke(new()
///     {
///         Parent = "my-service",
///         Name = "prod-variables/hostname",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/runtimeconfig"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := runtimeconfig.LookupVariable(ctx, &runtimeconfig.LookupVariableArgs{
/// 			Parent: "my-service",
/// 			Name:   "prod-variables/hostname",
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
/// import com.pulumi.gcp.runtimeconfig.RuntimeconfigFunctions;
/// import com.pulumi.gcp.runtimeconfig.inputs.GetVariableArgs;
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
///         final var run-service = RuntimeconfigFunctions.getVariable(GetVariableArgs.builder()
///             .parent("my-service")
///             .name("prod-variables/hostname")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   run-service:
///     fn::invoke:
///       function: gcp:runtimeconfig:getVariable
///       arguments:
///         parent: my-service
///         name: prod-variables/hostname
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_runtimeconfig_get_variable_get_variable_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVariableResult> getVariable(
  GetVariableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:runtimeconfig/getVariable:getVariable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVariableResult.fromMap(result);
}
