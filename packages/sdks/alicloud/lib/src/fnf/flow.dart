import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_args.dart';
import 'flow_state.dart';

/// Provides a Serverless Workflow Flow resource.
///
/// For information about Serverless Workflow Flow and how to use it, see [What is Flow](https://www.alibabacloud.com/help/en/doc-detail/123079.htm).
///
/// > **NOTE:** Available since v1.105.0.
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
/// const _default = new alicloud.ram.Role("default", {
///     name: "tf-example-fnfflow",
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
/// const example = new alicloud.fnf.Flow("example", {
///     definition: `  version: v1beta1
///   type: flow
///   steps:
///     - type: pass
///       name: helloworld
/// `,
///     roleArn: _default.arn,
///     description: "Test for terraform fnf_flow.",
///     name: "tf-example-flow",
///     type: "FDL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ram.Role("default",
///     name="tf-example-fnfflow",
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
/// example = alicloud.fnf.Flow("example",
///     definition="""  version: v1beta1
///   type: flow
///   steps:
///     - type: pass
///       name: helloworld
/// """,
///     role_arn=default.arn,
///     description="Test for terraform fnf_flow.",
///     name="tf-example-flow",
///     type="FDL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Ram.Role("default", new()
///     {
///         Name = "tf-example-fnfflow",
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
///     var example = new AliCloud.FNF.Flow("example", new()
///     {
///         Definition = @"  version: v1beta1
///   type: flow
///   steps:
///     - type: pass
///       name: helloworld
/// ",
///         RoleArn = @default.Arn,
///         Description = "Test for terraform fnf_flow.",
///         Name = "tf-example-flow",
///         Type = "FDL",
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
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := ram.NewRole(ctx, "default", &ram.RoleArgs{
/// 			Name: pulumi.String("tf-example-fnfflow"),
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
/// 		_, err = fnf.NewFlow(ctx, "example", &fnf.FlowArgs{
/// 			Definition: pulumi.String(`  version: v1beta1
///   type: flow
///   steps:
///     - type: pass
///       name: helloworld
/// `),
/// 			RoleArn:     _default.Arn,
/// 			Description: pulumi.String("Test for terraform fnf_flow."),
/// 			Name:        pulumi.String("tf-example-flow"),
/// 			Type:        pulumi.String("FDL"),
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
///         var default_ = new Role("default", RoleArgs.builder()
///             .name("tf-example-fnfflow")
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
///         var example = new Flow("example", FlowArgs.builder()
///             .definition("""
///   version: v1beta1
///   type: flow
///   steps:
///     - type: pass
///       name: helloworld
///             """)
///             .roleArn(default_.arn())
///             .description("Test for terraform fnf_flow.")
///             .name("tf-example-flow")
///             .type("FDL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:ram:Role
///     properties:
///       name: tf-example-fnfflow
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
///   example:
///     type: alicloud:fnf:Flow
///     properties:
///       definition: |2
///           version: v1beta1
///           type: flow
///           steps:
///             - type: pass
///               name: helloworld
///       roleArn: ${default.arn}
///       description: Test for terraform fnf_flow.
///       name: tf-example-flow
///       type: FDL
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Serverless Workflow Flow can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:fnf/flow:Flow example <name>
/// ```
class Flow extends pulumi.CustomResource {
  /// The definition of the flow. It must comply with the Flow Definition Language (FDL) syntax.
  late final pulumi.Output<String> definition;
  /// The description of the flow.
  late final pulumi.Output<String> description;
  /// The unique ID of the flow.
  late final pulumi.Output<String> flowId;
  /// The time when the flow was last modified.
  late final pulumi.Output<String> lastModifiedTime;
  /// The name of the flow. The name must be unique in an Alibaba Cloud account.
  late final pulumi.Output<String> name;
  /// The ARN of the specified RAM role that Serverless Workflow uses to assume the role when Serverless Workflow executes a flow.
  late final pulumi.Output<String?> roleArn;
  /// The type of the flow. Valid values are `FDL` or `DEFAULT`.
  late final pulumi.Output<String> type;

  /// Creates a new [Flow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Flow]. {@macro pulumi_fnf_flow_flow_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Flow(
    String name, {
    FlowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:fnf/flow:Flow',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.definition = registerOutput<String>('definition');
    this.description = registerOutput<String>('description');
    this.flowId = registerOutput<String>('flowId');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    this.roleArn = registerOutput<String?>('roleArn');
    this.type = registerOutput<String>('type');
  }

  /// Gets an existing [Flow] resource's state with the given [name] and [id].
  static Flow get(
    String name,
    pulumi.Input<String> id, {
    FlowState? state,
  }) {
    return Flow._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Flow._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:fnf/flow:Flow',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.definition = registerOutput<String>('definition');
    this.description = registerOutput<String>('description');
    this.flowId = registerOutput<String>('flowId');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    this.roleArn = registerOutput<String?>('roleArn');
    this.type = registerOutput<String>('type');
  }
}
