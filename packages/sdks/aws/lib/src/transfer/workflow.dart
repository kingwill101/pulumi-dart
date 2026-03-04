import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_args.dart';
import 'workflow_state.dart';

/// Provides a AWS Transfer Workflow resource.
///
/// ## Example Usage
///
/// ### Basic single step example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.transfer.Workflow("example", {steps: [{
///     deleteStepDetails: {
///         name: "example",
///         sourceFileLocation: "${original.file}",
///     },
///     type: "DELETE",
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.transfer.Workflow("example", steps=[{
///     "delete_step_details": {
///         "name": "example",
///         "source_file_location": "${original.file}",
///     },
///     "type": "DELETE",
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Transfer.Workflow("example", new()
///     {
///         Steps = new[]
///         {
///             new Aws.Transfer.Inputs.WorkflowStepArgs
///             {
///                 DeleteStepDetails = new Aws.Transfer.Inputs.WorkflowStepDeleteStepDetailsArgs
///                 {
///                     Name = "example",
///                     SourceFileLocation = "${original.file}",
///                 },
///                 Type = "DELETE",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transfer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := transfer.NewWorkflow(ctx, "example", &transfer.WorkflowArgs{
/// 			Steps: transfer.WorkflowStepArray{
/// 				&transfer.WorkflowStepArgs{
/// 					DeleteStepDetails: &transfer.WorkflowStepDeleteStepDetailsArgs{
/// 						Name:               pulumi.String("example"),
/// 						SourceFileLocation: pulumi.String("${original.file}"),
/// 					},
/// 					Type: pulumi.String("DELETE"),
/// 				},
/// 			},
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
/// import com.pulumi.aws.transfer.Workflow;
/// import com.pulumi.aws.transfer.WorkflowArgs;
/// import com.pulumi.aws.transfer.inputs.WorkflowStepArgs;
/// import com.pulumi.aws.transfer.inputs.WorkflowStepDeleteStepDetailsArgs;
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
///         var example = new Workflow("example", WorkflowArgs.builder()
///             .steps(WorkflowStepArgs.builder()
///                 .deleteStepDetails(WorkflowStepDeleteStepDetailsArgs.builder()
///                     .name("example")
///                     .sourceFileLocation("${original.file}")
///                     .build())
///                 .type("DELETE")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:transfer:Workflow
///     properties:
///       steps:
///         - deleteStepDetails:
///             name: example
///             sourceFileLocation: $${original.file}
///           type: DELETE
/// ```
///
///
/// ### Multistep example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.transfer.Workflow("example", {steps: [
///     {
///         customStepDetails: {
///             name: "example",
///             sourceFileLocation: "${original.file}",
///             target: exampleAwsLambdaFunction.arn,
///             timeoutSeconds: 60,
///         },
///         type: "CUSTOM",
///     },
///     {
///         tagStepDetails: {
///             name: "example",
///             sourceFileLocation: "${original.file}",
///             tags: [{
///                 key: "Name",
///                 value: "Hello World",
///             }],
///         },
///         type: "TAG",
///     },
/// ]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.transfer.Workflow("example", steps=[
///     {
///         "custom_step_details": {
///             "name": "example",
///             "source_file_location": "${original.file}",
///             "target": example_aws_lambda_function["arn"],
///             "timeout_seconds": 60,
///         },
///         "type": "CUSTOM",
///     },
///     {
///         "tag_step_details": {
///             "name": "example",
///             "source_file_location": "${original.file}",
///             "tags": [{
///                 "key": "Name",
///                 "value": "Hello World",
///             }],
///         },
///         "type": "TAG",
///     },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Transfer.Workflow("example", new()
///     {
///         Steps = new[]
///         {
///             new Aws.Transfer.Inputs.WorkflowStepArgs
///             {
///                 CustomStepDetails = new Aws.Transfer.Inputs.WorkflowStepCustomStepDetailsArgs
///                 {
///                     Name = "example",
///                     SourceFileLocation = "${original.file}",
///                     Target = exampleAwsLambdaFunction.Arn,
///                     TimeoutSeconds = 60,
///                 },
///                 Type = "CUSTOM",
///             },
///             new Aws.Transfer.Inputs.WorkflowStepArgs
///             {
///                 TagStepDetails = new Aws.Transfer.Inputs.WorkflowStepTagStepDetailsArgs
///                 {
///                     Name = "example",
///                     SourceFileLocation = "${original.file}",
///                     Tags = new[]
///                     {
///                         new Aws.Transfer.Inputs.WorkflowStepTagStepDetailsTagArgs
///                         {
///                             Key = "Name",
///                             Value = "Hello World",
///                         },
///                     },
///                 },
///                 Type = "TAG",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transfer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := transfer.NewWorkflow(ctx, "example", &transfer.WorkflowArgs{
/// 			Steps: transfer.WorkflowStepArray{
/// 				&transfer.WorkflowStepArgs{
/// 					CustomStepDetails: &transfer.WorkflowStepCustomStepDetailsArgs{
/// 						Name:               pulumi.String("example"),
/// 						SourceFileLocation: pulumi.String("${original.file}"),
/// 						Target:             pulumi.Any(exampleAwsLambdaFunction.Arn),
/// 						TimeoutSeconds:     pulumi.Int(60),
/// 					},
/// 					Type: pulumi.String("CUSTOM"),
/// 				},
/// 				&transfer.WorkflowStepArgs{
/// 					TagStepDetails: &transfer.WorkflowStepTagStepDetailsArgs{
/// 						Name:               pulumi.String("example"),
/// 						SourceFileLocation: pulumi.String("${original.file}"),
/// 						Tags: transfer.WorkflowStepTagStepDetailsTagArray{
/// 							&transfer.WorkflowStepTagStepDetailsTagArgs{
/// 								Key:   pulumi.String("Name"),
/// 								Value: pulumi.String("Hello World"),
/// 							},
/// 						},
/// 					},
/// 					Type: pulumi.String("TAG"),
/// 				},
/// 			},
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
/// import com.pulumi.aws.transfer.Workflow;
/// import com.pulumi.aws.transfer.WorkflowArgs;
/// import com.pulumi.aws.transfer.inputs.WorkflowStepArgs;
/// import com.pulumi.aws.transfer.inputs.WorkflowStepCustomStepDetailsArgs;
/// import com.pulumi.aws.transfer.inputs.WorkflowStepTagStepDetailsArgs;
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
///         var example = new Workflow("example", WorkflowArgs.builder()
///             .steps(
///                 WorkflowStepArgs.builder()
///                     .customStepDetails(WorkflowStepCustomStepDetailsArgs.builder()
///                         .name("example")
///                         .sourceFileLocation("${original.file}")
///                         .target(exampleAwsLambdaFunction.arn())
///                         .timeoutSeconds(60)
///                         .build())
///                     .type("CUSTOM")
///                     .build(),
///                 WorkflowStepArgs.builder()
///                     .tagStepDetails(WorkflowStepTagStepDetailsArgs.builder()
///                         .name("example")
///                         .sourceFileLocation("${original.file}")
///                         .tags(WorkflowStepTagStepDetailsTagArgs.builder()
///                             .key("Name")
///                             .value("Hello World")
///                             .build())
///                         .build())
///                     .type("TAG")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:transfer:Workflow
///     properties:
///       steps:
///         - customStepDetails:
///             name: example
///             sourceFileLocation: $${original.file}
///             target: ${exampleAwsLambdaFunction.arn}
///             timeoutSeconds: 60
///           type: CUSTOM
///         - tagStepDetails:
///             name: example
///             sourceFileLocation: $${original.file}
///             tags:
///               - key: Name
///                 value: Hello World
///           type: TAG
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Transfer Workflows using the `worflow_id`. For example:
///
/// ```sh
/// $ pulumi import aws:transfer/workflow:Workflow example example
/// ```
class Workflow extends pulumi.CustomResource {
  /// The Workflow ARN.
  late final pulumi.Output<String> arn;

  /// A textual description for the workflow.
  late final pulumi.Output<String?> description;

  /// Specifies the steps (actions) to take if errors are encountered during execution of the workflow. See Workflow Steps below.
  late final pulumi.Output<List<Map<String, dynamic>>?> onExceptionSteps;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Specifies the details for the steps that are in the specified workflow. See Workflow Steps below.
  late final pulumi.Output<List<Map<String, dynamic>>> steps;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Workflow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workflow]. {@macro pulumi_transfer_workflow_workflow_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workflow(
    String name, {
    WorkflowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:transfer/workflow:Workflow',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    onExceptionSteps = registerOutput<List<Map<String, dynamic>>?>(
      'onExceptionSteps',
    );
    region = registerOutput<String>('region');
    steps = registerOutput<List<Map<String, dynamic>>>('steps');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Workflow] resource's state with the given [name] and [id].
  static Workflow get(
    String name,
    pulumi.Input<String> id, {
    WorkflowState? state,
  }) {
    return Workflow._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Workflow._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:transfer/workflow:Workflow',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    onExceptionSteps = registerOutput<List<Map<String, dynamic>>?>(
      'onExceptionSteps',
    );
    region = registerOutput<String>('region');
    steps = registerOutput<List<Map<String, dynamic>>>('steps');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
