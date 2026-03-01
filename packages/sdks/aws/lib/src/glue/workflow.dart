import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_args.dart';
import 'workflow_state.dart';

/// Provides a Glue Workflow resource.
/// The workflow graph (DAG) can be build using the `aws.glue.Trigger` resource.
/// See the example below for creating a graph with four nodes (two triggers and two jobs).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Workflow("example", {name: "example"});
/// const example_start = new aws.glue.Trigger("example-start", {
///     name: "trigger-start",
///     type: "ON_DEMAND",
///     workflowName: example.name,
///     actions: [{
///         jobName: "example-job",
///     }],
/// });
/// const example_inner = new aws.glue.Trigger("example-inner", {
///     name: "trigger-inner",
///     type: "CONDITIONAL",
///     workflowName: example.name,
///     predicate: {
///         conditions: [{
///             jobName: "example-job",
///             state: "SUCCEEDED",
///         }],
///     },
///     actions: [{
///         jobName: "another-example-job",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Workflow("example", name="example")
/// example_start = aws.glue.Trigger("example-start",
///     name="trigger-start",
///     type="ON_DEMAND",
///     workflow_name=example.name,
///     actions=[{
///         "job_name": "example-job",
///     }])
/// example_inner = aws.glue.Trigger("example-inner",
///     name="trigger-inner",
///     type="CONDITIONAL",
///     workflow_name=example.name,
///     predicate={
///         "conditions": [{
///             "job_name": "example-job",
///             "state": "SUCCEEDED",
///         }],
///     },
///     actions=[{
///         "job_name": "another-example-job",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Glue.Workflow("example", new()
///     {
///         Name = "example",
///     });
///
///     var example_start = new Aws.Glue.Trigger("example-start", new()
///     {
///         Name = "trigger-start",
///         Type = "ON_DEMAND",
///         WorkflowName = example.Name,
///         Actions = new[]
///         {
///             new Aws.Glue.Inputs.TriggerActionArgs
///             {
///                 JobName = "example-job",
///             },
///         },
///     });
///
///     var example_inner = new Aws.Glue.Trigger("example-inner", new()
///     {
///         Name = "trigger-inner",
///         Type = "CONDITIONAL",
///         WorkflowName = example.Name,
///         Predicate = new Aws.Glue.Inputs.TriggerPredicateArgs
///         {
///             Conditions = new[]
///             {
///                 new Aws.Glue.Inputs.TriggerPredicateConditionArgs
///                 {
///                     JobName = "example-job",
///                     State = "SUCCEEDED",
///                 },
///             },
///         },
///         Actions = new[]
///         {
///             new Aws.Glue.Inputs.TriggerActionArgs
///             {
///                 JobName = "another-example-job",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := glue.NewWorkflow(ctx, "example", &glue.WorkflowArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = glue.NewTrigger(ctx, "example-start", &glue.TriggerArgs{
/// 			Name:         pulumi.String("trigger-start"),
/// 			Type:         pulumi.String("ON_DEMAND"),
/// 			WorkflowName: example.Name,
/// 			Actions: glue.TriggerActionArray{
/// 				&glue.TriggerActionArgs{
/// 					JobName: pulumi.String("example-job"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = glue.NewTrigger(ctx, "example-inner", &glue.TriggerArgs{
/// 			Name:         pulumi.String("trigger-inner"),
/// 			Type:         pulumi.String("CONDITIONAL"),
/// 			WorkflowName: example.Name,
/// 			Predicate: &glue.TriggerPredicateArgs{
/// 				Conditions: glue.TriggerPredicateConditionArray{
/// 					&glue.TriggerPredicateConditionArgs{
/// 						JobName: pulumi.String("example-job"),
/// 						State:   pulumi.String("SUCCEEDED"),
/// 					},
/// 				},
/// 			},
/// 			Actions: glue.TriggerActionArray{
/// 				&glue.TriggerActionArgs{
/// 					JobName: pulumi.String("another-example-job"),
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
/// import com.pulumi.aws.glue.Workflow;
/// import com.pulumi.aws.glue.WorkflowArgs;
/// import com.pulumi.aws.glue.Trigger;
/// import com.pulumi.aws.glue.TriggerArgs;
/// import com.pulumi.aws.glue.inputs.TriggerActionArgs;
/// import com.pulumi.aws.glue.inputs.TriggerPredicateArgs;
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
///             .name("example")
///             .build());
///
///         var example_start = new Trigger("example-start", TriggerArgs.builder()
///             .name("trigger-start")
///             .type("ON_DEMAND")
///             .workflowName(example.name())
///             .actions(TriggerActionArgs.builder()
///                 .jobName("example-job")
///                 .build())
///             .build());
///
///         var example_inner = new Trigger("example-inner", TriggerArgs.builder()
///             .name("trigger-inner")
///             .type("CONDITIONAL")
///             .workflowName(example.name())
///             .predicate(TriggerPredicateArgs.builder()
///                 .conditions(TriggerPredicateConditionArgs.builder()
///                     .jobName("example-job")
///                     .state("SUCCEEDED")
///                     .build())
///                 .build())
///             .actions(TriggerActionArgs.builder()
///                 .jobName("another-example-job")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Workflow
///     properties:
///       name: example
///   example-start:
///     type: aws:glue:Trigger
///     properties:
///       name: trigger-start
///       type: ON_DEMAND
///       workflowName: ${example.name}
///       actions:
///         - jobName: example-job
///   example-inner:
///     type: aws:glue:Trigger
///     properties:
///       name: trigger-inner
///       type: CONDITIONAL
///       workflowName: ${example.name}
///       predicate:
///         conditions:
///           - jobName: example-job
///             state: SUCCEEDED
///       actions:
///         - jobName: another-example-job
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue Workflows using `name`. For example:
///
/// ```sh
/// $ pulumi import aws:glue/workflow:Workflow MyWorkflow MyWorkflow
/// ```
class Workflow extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of Glue Workflow
  late final pulumi.Output<String> arn;
  /// A map of default run properties for this workflow. These properties are passed to all jobs associated to the workflow.
  late final pulumi.Output<Map<String, String>?> defaultRunProperties;
  /// Description of the workflow.
  late final pulumi.Output<String?> description;
  /// Prevents exceeding the maximum number of concurrent runs of any of the component jobs. If you leave this parameter blank, there is no limit to the number of concurrent workflow runs.
  late final pulumi.Output<int?> maxConcurrentRuns;
  /// The name you assign to this workflow.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Workflow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workflow]. {@macro pulumi_glue_workflow_workflow_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workflow(
    String name, {
    WorkflowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/workflow:Workflow',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.defaultRunProperties = registerOutput<Map<String, String>?>('defaultRunProperties');
    this.description = registerOutput<String?>('description');
    this.maxConcurrentRuns = registerOutput<int?>('maxConcurrentRuns');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
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
          'aws:glue/workflow:Workflow',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.defaultRunProperties = registerOutput<Map<String, String>?>('defaultRunProperties');
    this.description = registerOutput<String?>('description');
    this.maxConcurrentRuns = registerOutput<int?>('maxConcurrentRuns');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
