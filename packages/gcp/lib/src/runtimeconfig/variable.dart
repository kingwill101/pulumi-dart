import 'package:pulumi/pulumi.dart' as pulumi;
import 'variable_args.dart';

/// Manages a RuntimeConfig variable in Google Cloud. For more information, see the
/// [official documentation](https://cloud.google.com/deployment-manager/runtime-configurator/),
/// or the
/// [JSON API](https://cloud.google.com/deployment-manager/runtime-configurator/reference/rest/).
///
/// ## Example Usage
///
/// Example creating a RuntimeConfig variable.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_runtime_config = new gcp.runtimeconfig.Config("my-runtime-config", {
///     name: "my-service-runtime-config",
///     description: "Runtime configuration values for my service",
/// });
/// const environment = new gcp.runtimeconfig.Variable("environment", {
///     parent: my_runtime_config.name,
///     name: "prod-variables/hostname",
///     text: "example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_runtime_config = gcp.runtimeconfig.Config("my-runtime-config",
///     name="my-service-runtime-config",
///     description="Runtime configuration values for my service")
/// environment = gcp.runtimeconfig.Variable("environment",
///     parent=my_runtime_config.name,
///     name="prod-variables/hostname",
///     text="example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_runtime_config = new Gcp.RuntimeConfig.Config("my-runtime-config", new()
///     {
///         Name = "my-service-runtime-config",
///         Description = "Runtime configuration values for my service",
///     });
///
///     var environment = new Gcp.RuntimeConfig.Variable("environment", new()
///     {
///         Parent = my_runtime_config.Name,
///         Name = "prod-variables/hostname",
///         Text = "example.com",
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
/// 		my_runtime_config, err := runtimeconfig.NewConfig(ctx, "my-runtime-config", &runtimeconfig.ConfigArgs{
/// 			Name:        pulumi.String("my-service-runtime-config"),
/// 			Description: pulumi.String("Runtime configuration values for my service"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = runtimeconfig.NewVariable(ctx, "environment", &runtimeconfig.VariableArgs{
/// 			Parent: my_runtime_config.Name,
/// 			Name:   pulumi.String("prod-variables/hostname"),
/// 			Text:   pulumi.String("example.com"),
/// 		})
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
/// import com.pulumi.gcp.runtimeconfig.Config;
/// import com.pulumi.gcp.runtimeconfig.ConfigArgs;
/// import com.pulumi.gcp.runtimeconfig.Variable;
/// import com.pulumi.gcp.runtimeconfig.VariableArgs;
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
///         var my_runtime_config = new Config("my-runtime-config", ConfigArgs.builder()
///             .name("my-service-runtime-config")
///             .description("Runtime configuration values for my service")
///             .build());
///
///         var environment = new Variable("environment", VariableArgs.builder()
///             .parent(my_runtime_config.name())
///             .name("prod-variables/hostname")
///             .text("example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-runtime-config:
///     type: gcp:runtimeconfig:Config
///     properties:
///       name: my-service-runtime-config
///       description: Runtime configuration values for my service
///   environment:
///     type: gcp:runtimeconfig:Variable
///     properties:
///       parent: ${["my-runtime-config"].name}
///       name: prod-variables/hostname
///       text: example.com
/// ```
///
///
/// You can also encode binary content using the `value` argument instead. The
/// value must be base64 encoded.
///
/// Example of using the `value` argument.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const my_runtime_config = new gcp.runtimeconfig.Config("my-runtime-config", {
///     name: "my-service-runtime-config",
///     description: "Runtime configuration values for my service",
/// });
/// const my_secret = new gcp.runtimeconfig.Variable("my-secret", {
///     parent: my_runtime_config.name,
///     name: "secret",
///     value: std.filebase64({
///         input: "my-encrypted-secret.dat",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// my_runtime_config = gcp.runtimeconfig.Config("my-runtime-config",
///     name="my-service-runtime-config",
///     description="Runtime configuration values for my service")
/// my_secret = gcp.runtimeconfig.Variable("my-secret",
///     parent=my_runtime_config.name,
///     name="secret",
///     value=std.filebase64(input="my-encrypted-secret.dat").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_runtime_config = new Gcp.RuntimeConfig.Config("my-runtime-config", new()
///     {
///         Name = "my-service-runtime-config",
///         Description = "Runtime configuration values for my service",
///     });
///
///     var my_secret = new Gcp.RuntimeConfig.Variable("my-secret", new()
///     {
///         Parent = my_runtime_config.Name,
///         Name = "secret",
///         Value = Std.Filebase64.Invoke(new()
///         {
///             Input = "my-encrypted-secret.dat",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/runtimeconfig"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		my_runtime_config, err := runtimeconfig.NewConfig(ctx, "my-runtime-config", &runtimeconfig.ConfigArgs{
/// 			Name:        pulumi.String("my-service-runtime-config"),
/// 			Description: pulumi.String("Runtime configuration values for my service"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "my-encrypted-secret.dat",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = runtimeconfig.NewVariable(ctx, "my-secret", &runtimeconfig.VariableArgs{
/// 			Parent: my_runtime_config.Name,
/// 			Name:   pulumi.String("secret"),
/// 			Value:  pulumi.String(invokeFilebase64.Result),
/// 		})
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
/// import com.pulumi.gcp.runtimeconfig.Config;
/// import com.pulumi.gcp.runtimeconfig.ConfigArgs;
/// import com.pulumi.gcp.runtimeconfig.Variable;
/// import com.pulumi.gcp.runtimeconfig.VariableArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
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
///         var my_runtime_config = new Config("my-runtime-config", ConfigArgs.builder()
///             .name("my-service-runtime-config")
///             .description("Runtime configuration values for my service")
///             .build());
///
///         var my_secret = new Variable("my-secret", VariableArgs.builder()
///             .parent(my_runtime_config.name())
///             .name("secret")
///             .value(StdFunctions.filebase64(Filebase64Args.builder()
///                 .input("my-encrypted-secret.dat")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-runtime-config:
///     type: gcp:runtimeconfig:Config
///     properties:
///       name: my-service-runtime-config
///       description: Runtime configuration values for my service
///   my-secret:
///     type: gcp:runtimeconfig:Variable
///     properties:
///       parent: ${["my-runtime-config"].name}
///       name: secret
///       value:
///         fn::invoke:
///           function: std:filebase64
///           arguments:
///             input: my-encrypted-secret.dat
///           return: result
/// ```
///
///
/// ## Import
///
/// Runtime Config Variables can be imported using the `name` or full variable name, e.g.
///
/// * `projects/my-gcp-project/configs/{{config_id}}/variables/{{name}}`
///
/// * `{{config_id}}/{{name}}`
///
/// When using the `pulumi import` command, Runtime Config Variables can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:runtimeconfig/variable:Variable default projects/my-gcp-project/configs/{{config_id}}/variables/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:runtimeconfig/variable:Variable default {{config_id}}/{{name}}
/// ```
///
/// When importing using only the name, the provider project must be set.
class Variable extends pulumi.CustomResource {
  /// The name of the variable to manage. Note that variable
  /// names can be hierarchical using slashes (e.g. "prod-variables/hostname").
  late final pulumi.Output<String> name;

  /// The name of the RuntimeConfig resource containing this
  /// variable.
  late final pulumi.Output<String> parent;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// or `value` - (Required) The content to associate with the variable.
  /// Exactly one of `text` or `variable` must be specified. If `text` is specified,
  /// it must be a valid UTF-8 string and less than 4096 bytes in length. If `value`
  /// is specified, it must be base64 encoded and less than 4096 bytes in length.
  ///
  /// - - -
  late final pulumi.Output<String?> text;

  /// (Computed) The timestamp in RFC3339 UTC "Zulu" format,
  /// accurate to nanoseconds, representing when the variable was last updated.
  /// Example: "2016-10-09T12:33:37.578138407Z".
  late final pulumi.Output<String> updateTime;
  late final pulumi.Output<String?> value;

  /// Creates a new [Variable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Variable]. {@macro pulumi_runtimeconfig_variable_variable_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Variable(
    String name, {
    VariableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:runtimeconfig/variable:Variable',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.project = registerOutput<String>('project');
    this.text = registerOutput<String?>('text');
    this.updateTime = registerOutput<String>('updateTime');
    this.value = registerOutput<String?>('value');
  }
}
