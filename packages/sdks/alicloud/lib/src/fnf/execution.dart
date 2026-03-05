import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_args.dart';
import 'execution_state.dart';

/// Provides a Serverless Workflow Execution resource.
///
/// For information about Serverless Workflow Execution and how to use it, see [What is Execution](https://www.alibabacloud.com/help/en/doc-detail/122628.html).
///
/// &gt; **NOTE:** Available since v1.149.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example-fnfflow";
/// const _default = new alicloud.ram.Role("default", {
///     name: name,
///     document: `  {
///     \\"Statement\\": [
///       {
///         \\"Action\\": \\"sts:AssumeRole\\",
///         \\"Effect\\": \\"Allow\\",
///         \\"Principal\\": {
///           \\"Service\\": [
///             \\"fnf.aliyuncs.com\\"
///           ]
///         }
///       }
///     ],
///     \\"Version\\": \\"1\\"
///   }
/// `,
/// });
/// const defaultFlow = new alicloud.fnf.Flow("default", {
///     definition: `  version: v1beta1
///   type: flow
///   steps:
///     - type: wait
///       name: custom_wait
///       duration: .wait
/// `,
///     roleArn: _default.arn,
///     description: "Test for terraform fnf_flow.",
///     name: name,
///     type: "FDL",
/// });
/// const defaultExecution = new alicloud.fnf.Execution("default", {
///     executionName: name,
///     flowName: defaultFlow.name,
///     input: "{\"wait\": 600}",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example-fnfflow"
/// default = alicloud.ram.Role("default",
///     name=name,
///     document="""  {
///     \"Statement\": [
///       {
///         \"Action\": \"sts:AssumeRole\",
///         \"Effect\": \"Allow\",
///         \"Principal\": {
///           \"Service\": [
///             \"fnf.aliyuncs.com\"
///           ]
///         }
///       }
///     ],
///     \"Version\": \"1\"
///   }
/// """)
/// default_flow = alicloud.fnf.Flow("default",
///     definition="""  version: v1beta1
///   type: flow
///   steps:
///     - type: wait
///       name: custom_wait
///       duration: $.wait
/// """,
///     role_arn=default.arn,
///     description="Test for terraform fnf_flow.",
///     name=name,
///     type="FDL")
/// default_execution = alicloud.fnf.Execution("default",
///     execution_name=name,
///     flow_name=default_flow.name,
///     input="{\"wait\": 600}")
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
///     var name = config.Get("name") ?? "tf-example-fnfflow";
///     var @default = new AliCloud.Ram.Role("default", new()
///     {
///         Name = name,
///         Document = @"  {
///     \""Statement\"": [
///       {
///         \""Action\"": \""sts:AssumeRole\"",
///         \""Effect\"": \""Allow\"",
///         \""Principal\"": {
///           \""Service\"": [
///             \""fnf.aliyuncs.com\""
///           ]
///         }
///       }
///     ],
///     \""Version\"": \""1\""
///   }
/// ",
///     });
///
///     var defaultFlow = new AliCloud.FNF.Flow("default", new()
///     {
///         Definition = @"  version: v1beta1
///   type: flow
///   steps:
///     - type: wait
///       name: custom_wait
///       duration: $.wait
/// ",
///         RoleArn = @default.Arn,
///         Description = "Test for terraform fnf_flow.",
///         Name = name,
///         Type = "FDL",
///     });
///
///     var defaultExecution = new AliCloud.FNF.Execution("default", new()
///     {
///         ExecutionName = name,
///         FlowName = defaultFlow.Name,
///         Input = "{\"wait\": 600}",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/fnf"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example-fnfflow"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := ram.NewRole(ctx, "default", &ram.RoleArgs{
/// 			Name: pulumi.String(name),
/// 			Document: pulumi.String(`  {
///     \"Statement\": [
///       {
///         \"Action\": \"sts:AssumeRole\",
///         \"Effect\": \"Allow\",
///         \"Principal\": {
///           \"Service\": [
///             \"fnf.aliyuncs.com\"
///           ]
///         }
///       }
///     ],
///     \"Version\": \"1\"
///   }
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultFlow, err := fnf.NewFlow(ctx, "default", &fnf.FlowArgs{
/// 			Definition: pulumi.String(`  version: v1beta1
///   type: flow
///   steps:
///     - type: wait
///       name: custom_wait
///       duration: $.wait
/// `),
/// 			RoleArn:     _default.Arn,
/// 			Description: pulumi.String("Test for terraform fnf_flow."),
/// 			Name:        pulumi.String(name),
/// 			Type:        pulumi.String("FDL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = fnf.NewExecution(ctx, "default", &fnf.ExecutionArgs{
/// 			ExecutionName: pulumi.String(name),
/// 			FlowName:      defaultFlow.Name,
/// 			Input:         pulumi.String("{\"wait\": 600}"),
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
/// import com.pulumi.alicloud.ram.Role;
/// import com.pulumi.alicloud.ram.RoleArgs;
/// import com.pulumi.alicloud.fnf.Flow;
/// import com.pulumi.alicloud.fnf.FlowArgs;
/// import com.pulumi.alicloud.fnf.Execution;
/// import com.pulumi.alicloud.fnf.ExecutionArgs;
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
///         final var name = config.get("name").orElse("tf-example-fnfflow");
///         var default_ = new Role("default", RoleArgs.builder()
///             .name(name)
///             .document("""
///   {
///     \"Statement\": [
///       {
///         \"Action\": \"sts:AssumeRole\",
///         \"Effect\": \"Allow\",
///         \"Principal\": {
///           \"Service\": [
///             \"fnf.aliyuncs.com\"
///           ]
///         }
///       }
///     ],
///     \"Version\": \"1\"
///   }
///             """)
///             .build());
///
///         var defaultFlow = new Flow("defaultFlow", FlowArgs.builder()
///             .definition("""
///   version: v1beta1
///   type: flow
///   steps:
///     - type: wait
///       name: custom_wait
///       duration: $.wait
///             """)
///             .roleArn(default_.arn())
///             .description("Test for terraform fnf_flow.")
///             .name(name)
///             .type("FDL")
///             .build());
///
///         var defaultExecution = new Execution("defaultExecution", ExecutionArgs.builder()
///             .executionName(name)
///             .flowName(defaultFlow.name())
///             .input("{\"wait\": 600}")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example-fnfflow
/// resources:
///   default:
///     type: alicloud:ram:Role
///     properties:
///       name: ${name}
///       document: |2
///           {
///             \"Statement\": [
///               {
///                 \"Action\": \"sts:AssumeRole\",
///                 \"Effect\": \"Allow\",
///                 \"Principal\": {
///                   \"Service\": [
///                     \"fnf.aliyuncs.com\"
///                   ]
///                 }
///               }
///             ],
///             \"Version\": \"1\"
///           }
///   defaultFlow:
///     type: alicloud:fnf:Flow
///     name: default
///     properties:
///       definition: |2
///           version: v1beta1
///           type: flow
///           steps:
///             - type: wait
///               name: custom_wait
///               duration: $.wait
///       roleArn: ${default.arn}
///       description: Test for terraform fnf_flow.
///       name: ${name}
///       type: FDL
///   defaultExecution:
///     type: alicloud:fnf:Execution
///     name: default
///     properties:
///       executionName: ${name}
///       flowName: ${defaultFlow.name}
///       input: '{"wait": 600}'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Serverless Workflow Execution can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:fnf/execution:Execution example <flow_name>:<execution_name>
/// ```
class Execution extends pulumi.CustomResource {
  /// The name of the execution.
  late final pulumi.Output<String> executionName;
  /// The name of the flow.
  late final pulumi.Output<String> flowName;
  /// The Input information for this execution.
  late final pulumi.Output<String?> input;
  /// The status of the resource. Valid values: `Stopped`.
  late final pulumi.Output<String> status;

  /// Creates a new [Execution].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Execution]. {@macro pulumi_fnf_execution_execution_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Execution(
    String name, {
    ExecutionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:fnf/execution:Execution',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    executionName = registerOutput<String>('executionName');
    flowName = registerOutput<String>('flowName');
    input = registerOutput<String?>('input');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [Execution] resource's state with the given [name] and [id].
  static Execution get(
    String name,
    pulumi.Input<String> id, {
    ExecutionState? state,
  }) {
    return Execution._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Execution._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:fnf/execution:Execution',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    executionName = registerOutput<String>('executionName');
    flowName = registerOutput<String>('flowName');
    input = registerOutput<String?>('input');
    status = registerOutput<String>('status');
  }
}
