import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_definition_args.dart';
import 'pipeline_definition_state.dart';

/// Provides a DataPipeline Pipeline Definition resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.datapipeline.Pipeline("default", {name: "tf-pipeline-default"});
/// const example = new aws.datapipeline.PipelineDefinition("example", {
///     pipelineId: _default.id,
///     pipelineObjects: [
///         {
///             id: "Default",
///             name: "Default",
///             fields: [{
///                 key: "workerGroup",
///                 stringValue: "workerGroup",
///             }],
///         },
///         {
///             id: "Schedule",
///             name: "Schedule",
///             fields: [
///                 {
///                     key: "startDateTime",
///                     stringValue: "2012-12-12T00:00:00",
///                 },
///                 {
///                     key: "type",
///                     stringValue: "Schedule",
///                 },
///                 {
///                     key: "period",
///                     stringValue: "1 hour",
///                 },
///                 {
///                     key: "endDateTime",
///                     stringValue: "2012-12-21T18:00:00",
///                 },
///             ],
///         },
///         {
///             id: "SayHello",
///             name: "SayHello",
///             fields: [
///                 {
///                     key: "type",
///                     stringValue: "ShellCommandActivity",
///                 },
///                 {
///                     key: "command",
///                     stringValue: "echo hello",
///                 },
///                 {
///                     key: "parent",
///                     stringValue: "Default",
///                 },
///                 {
///                     key: "schedule",
///                     stringValue: "Schedule",
///                 },
///             ],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.datapipeline.Pipeline("default", name="tf-pipeline-default")
/// example = aws.datapipeline.PipelineDefinition("example",
///     pipeline_id=default.id,
///     pipeline_objects=[
///         {
///             "id": "Default",
///             "name": "Default",
///             "fields": [{
///                 "key": "workerGroup",
///                 "string_value": "workerGroup",
///             }],
///         },
///         {
///             "id": "Schedule",
///             "name": "Schedule",
///             "fields": [
///                 {
///                     "key": "startDateTime",
///                     "string_value": "2012-12-12T00:00:00",
///                 },
///                 {
///                     "key": "type",
///                     "string_value": "Schedule",
///                 },
///                 {
///                     "key": "period",
///                     "string_value": "1 hour",
///                 },
///                 {
///                     "key": "endDateTime",
///                     "string_value": "2012-12-21T18:00:00",
///                 },
///             ],
///         },
///         {
///             "id": "SayHello",
///             "name": "SayHello",
///             "fields": [
///                 {
///                     "key": "type",
///                     "string_value": "ShellCommandActivity",
///                 },
///                 {
///                     "key": "command",
///                     "string_value": "echo hello",
///                 },
///                 {
///                     "key": "parent",
///                     "string_value": "Default",
///                 },
///                 {
///                     "key": "schedule",
///                     "string_value": "Schedule",
///                 },
///             ],
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.DataPipeline.Pipeline("default", new()
///     {
///         Name = "tf-pipeline-default",
///     });
///
///     var example = new Aws.DataPipeline.PipelineDefinition("example", new()
///     {
///         PipelineId = @default.Id,
///         PipelineObjects = new[]
///         {
///             new Aws.DataPipeline.Inputs.PipelineDefinitionPipelineObjectArgs
///             {
///                 Id = "Default",
///                 Name = "Default",
///                 Fields = new[]
///                 {
///                     new Aws.DataPipeline.Inputs.PipelineDefinitionPipelineObjectFieldArgs
///                     {
///                         Key = "workerGroup",
///                         StringValue = "workerGroup",
///                     },
///                 },
///             },
///             new Aws.DataPipeline.Inputs.PipelineDefinitionPipelineObjectArgs
///             {
///                 Id = "Schedule",
///                 Name = "Schedule",
///                 Fields = new[]
///                 {
///                     new Aws.DataPipeline.Inputs.PipelineDefinitionPipelineObjectFieldArgs
///                     {
///                         Key = "startDateTime",
///                         StringValue = "2012-12-12T00:00:00",
///                     },
///                     new Aws.DataPipeline.Inputs.PipelineDefinitionPipelineObjectFieldArgs
///                     {
///                         Key = "type",
///                         StringValue = "Schedule",
///                     },
///                     new Aws.DataPipeline.Inputs.PipelineDefinitionPipelineObjectFieldArgs
///                     {
///                         Key = "period",
///                         StringValue = "1 hour",
///                     },
///                     new Aws.DataPipeline.Inputs.PipelineDefinitionPipelineObjectFieldArgs
///                     {
///                         Key = "endDateTime",
///                         StringValue = "2012-12-21T18:00:00",
///                     },
///                 },
///             },
///             new Aws.DataPipeline.Inputs.PipelineDefinitionPipelineObjectArgs
///             {
///                 Id = "SayHello",
///                 Name = "SayHello",
///                 Fields = new[]
///                 {
///                     new Aws.DataPipeline.Inputs.PipelineDefinitionPipelineObjectFieldArgs
///                     {
///                         Key = "type",
///                         StringValue = "ShellCommandActivity",
///                     },
///                     new Aws.DataPipeline.Inputs.PipelineDefinitionPipelineObjectFieldArgs
///                     {
///                         Key = "command",
///                         StringValue = "echo hello",
///                     },
///                     new Aws.DataPipeline.Inputs.PipelineDefinitionPipelineObjectFieldArgs
///                     {
///                         Key = "parent",
///                         StringValue = "Default",
///                     },
///                     new Aws.DataPipeline.Inputs.PipelineDefinitionPipelineObjectFieldArgs
///                     {
///                         Key = "schedule",
///                         StringValue = "Schedule",
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datapipeline"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := datapipeline.NewPipeline(ctx, "default", &datapipeline.PipelineArgs{
/// 			Name: pulumi.String("tf-pipeline-default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datapipeline.NewPipelineDefinition(ctx, "example", &datapipeline.PipelineDefinitionArgs{
/// 			PipelineId: _default.ID().ToIDOutput().ToStringOutput(),
/// 			PipelineObjects: datapipeline.PipelineDefinitionPipelineObjectArray{
/// 				&datapipeline.PipelineDefinitionPipelineObjectArgs{
/// 					Id:   pulumi.String("Default"),
/// 					Name: pulumi.String("Default"),
/// 					Fields: datapipeline.PipelineDefinitionPipelineObjectFieldArray{
/// 						&datapipeline.PipelineDefinitionPipelineObjectFieldArgs{
/// 							Key:         pulumi.String("workerGroup"),
/// 							StringValue: pulumi.String("workerGroup"),
/// 						},
/// 					},
/// 				},
/// 				&datapipeline.PipelineDefinitionPipelineObjectArgs{
/// 					Id:   pulumi.String("Schedule"),
/// 					Name: pulumi.String("Schedule"),
/// 					Fields: datapipeline.PipelineDefinitionPipelineObjectFieldArray{
/// 						&datapipeline.PipelineDefinitionPipelineObjectFieldArgs{
/// 							Key:         pulumi.String("startDateTime"),
/// 							StringValue: pulumi.String("2012-12-12T00:00:00"),
/// 						},
/// 						&datapipeline.PipelineDefinitionPipelineObjectFieldArgs{
/// 							Key:         pulumi.String("type"),
/// 							StringValue: pulumi.String("Schedule"),
/// 						},
/// 						&datapipeline.PipelineDefinitionPipelineObjectFieldArgs{
/// 							Key:         pulumi.String("period"),
/// 							StringValue: pulumi.String("1 hour"),
/// 						},
/// 						&datapipeline.PipelineDefinitionPipelineObjectFieldArgs{
/// 							Key:         pulumi.String("endDateTime"),
/// 							StringValue: pulumi.String("2012-12-21T18:00:00"),
/// 						},
/// 					},
/// 				},
/// 				&datapipeline.PipelineDefinitionPipelineObjectArgs{
/// 					Id:   pulumi.String("SayHello"),
/// 					Name: pulumi.String("SayHello"),
/// 					Fields: datapipeline.PipelineDefinitionPipelineObjectFieldArray{
/// 						&datapipeline.PipelineDefinitionPipelineObjectFieldArgs{
/// 							Key:         pulumi.String("type"),
/// 							StringValue: pulumi.String("ShellCommandActivity"),
/// 						},
/// 						&datapipeline.PipelineDefinitionPipelineObjectFieldArgs{
/// 							Key:         pulumi.String("command"),
/// 							StringValue: pulumi.String("echo hello"),
/// 						},
/// 						&datapipeline.PipelineDefinitionPipelineObjectFieldArgs{
/// 							Key:         pulumi.String("parent"),
/// 							StringValue: pulumi.String("Default"),
/// 						},
/// 						&datapipeline.PipelineDefinitionPipelineObjectFieldArgs{
/// 							Key:         pulumi.String("schedule"),
/// 							StringValue: pulumi.String("Schedule"),
/// 						},
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_datapipeline_pipeline" "default" {
///   name = "tf-pipeline-default"
/// }
/// resource "aws_datapipeline_pipelinedefinition" "example" {
///   pipeline_id = aws_datapipeline_pipeline.default.id
///   pipeline_objects {
///     id   = "Default"
///     name = "Default"
///     fields {
///       key          = "workerGroup"
///       string_value = "workerGroup"
///     }
///   }
///   pipeline_objects {
///     id   = "Schedule"
///     name = "Schedule"
///     fields {
///       key          = "startDateTime"
///       string_value = "2012-12-12T00:00:00"
///     }
///     fields {
///       key          = "type"
///       string_value = "Schedule"
///     }
///     fields {
///       key          = "period"
///       string_value = "1 hour"
///     }
///     fields {
///       key          = "endDateTime"
///       string_value = "2012-12-21T18:00:00"
///     }
///   }
///   pipeline_objects {
///     id   = "SayHello"
///     name = "SayHello"
///     fields {
///       key          = "type"
///       string_value = "ShellCommandActivity"
///     }
///     fields {
///       key          = "command"
///       string_value = "echo hello"
///     }
///     fields {
///       key          = "parent"
///       string_value = "Default"
///     }
///     fields {
///       key          = "schedule"
///       string_value = "Schedule"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.datapipeline.Pipeline;
/// import com.pulumi.aws.datapipeline.PipelineArgs;
/// import com.pulumi.aws.datapipeline.PipelineDefinition;
/// import com.pulumi.aws.datapipeline.PipelineDefinitionArgs;
/// import com.pulumi.aws.datapipeline.inputs.PipelineDefinitionPipelineObjectArgs;
/// import com.pulumi.aws.datapipeline.inputs.PipelineDefinitionPipelineObjectFieldArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var default_ = new Pipeline("default", PipelineArgs.builder()
///             .name("tf-pipeline-default")
///             .build());
///
///         var example = new PipelineDefinition("example", PipelineDefinitionArgs.builder()
///             .pipelineId(default_.id())
///             .pipelineObjects(
///                 PipelineDefinitionPipelineObjectArgs.builder()
///                     .id("Default")
///                     .name("Default")
///                     .fields(PipelineDefinitionPipelineObjectFieldArgs.builder()
///                         .key("workerGroup")
///                         .stringValue("workerGroup")
///                         .build())
///                     .build(),
///                 PipelineDefinitionPipelineObjectArgs.builder()
///                     .id("Schedule")
///                     .name("Schedule")
///                     .fields(
///                         PipelineDefinitionPipelineObjectFieldArgs.builder()
///                             .key("startDateTime")
///                             .stringValue("2012-12-12T00:00:00")
///                             .build(),
///                         PipelineDefinitionPipelineObjectFieldArgs.builder()
///                             .key("type")
///                             .stringValue("Schedule")
///                             .build(),
///                         PipelineDefinitionPipelineObjectFieldArgs.builder()
///                             .key("period")
///                             .stringValue("1 hour")
///                             .build(),
///                         PipelineDefinitionPipelineObjectFieldArgs.builder()
///                             .key("endDateTime")
///                             .stringValue("2012-12-21T18:00:00")
///                             .build())
///                     .build(),
///                 PipelineDefinitionPipelineObjectArgs.builder()
///                     .id("SayHello")
///                     .name("SayHello")
///                     .fields(
///                         PipelineDefinitionPipelineObjectFieldArgs.builder()
///                             .key("type")
///                             .stringValue("ShellCommandActivity")
///                             .build(),
///                         PipelineDefinitionPipelineObjectFieldArgs.builder()
///                             .key("command")
///                             .stringValue("echo hello")
///                             .build(),
///                         PipelineDefinitionPipelineObjectFieldArgs.builder()
///                             .key("parent")
///                             .stringValue("Default")
///                             .build(),
///                         PipelineDefinitionPipelineObjectFieldArgs.builder()
///                             .key("schedule")
///                             .stringValue("Schedule")
///                             .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:datapipeline:Pipeline
///     properties:
///       name: tf-pipeline-default
///   example:
///     type: aws:datapipeline:PipelineDefinition
///     properties:
///       pipelineId: ${default.id}
///       pipelineObjects:
///         - id: Default
///           name: Default
///           fields:
///             - key: workerGroup
///               stringValue: workerGroup
///         - id: Schedule
///           name: Schedule
///           fields:
///             - key: startDateTime
///               stringValue: 2012-12-12T00:00:00
///             - key: type
///               stringValue: Schedule
///             - key: period
///               stringValue: 1 hour
///             - key: endDateTime
///               stringValue: 2012-12-21T18:00:00
///         - id: SayHello
///           name: SayHello
///           fields:
///             - key: type
///               stringValue: ShellCommandActivity
///             - key: command
///               stringValue: echo hello
///             - key: parent
///               stringValue: Default
///             - key: schedule
///               stringValue: Schedule
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.datapipeline.PipelineDefinition` using the id. For example:
///
/// ```sh
/// $ pulumi import aws:datapipeline/pipelineDefinition:PipelineDefinition example df-1234567890
/// ```
class PipelineDefinition extends pulumi.CustomResource {
  /// Configuration block for the parameter objects used in the pipeline definition. See below
  late final pulumi.Output<List<Map<String, dynamic>>?> parameterObjects;
  /// Configuration block for the parameter values used in the pipeline definition. See below
  late final pulumi.Output<List<Map<String, dynamic>>?> parameterValues;
  /// ID of the pipeline.
  late final pulumi.Output<String> pipelineId;
  /// Configuration block for the objects that define the pipeline. See below
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<Map<String, dynamic>>> pipelineObjects;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [PipelineDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PipelineDefinition]. {@macro pulumi_datapipeline_pipeline_definition_pipeline_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PipelineDefinition(
    String name, {
    PipelineDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datapipeline/pipelineDefinition:PipelineDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    parameterObjects = registerOutput<List<Map<String, dynamic>>?>('parameterObjects');
    parameterValues = registerOutput<List<Map<String, dynamic>>?>('parameterValues');
    pipelineId = registerOutput<String>('pipelineId');
    pipelineObjects = registerOutput<List<Map<String, dynamic>>>('pipelineObjects');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [PipelineDefinition] resource's state with the given [name] and [id].
  static PipelineDefinition get(
    String name,
    pulumi.Input<String> id, {
    PipelineDefinitionState? state,
  }) {
    return PipelineDefinition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PipelineDefinition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datapipeline/pipelineDefinition:PipelineDefinition',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    parameterObjects = registerOutput<List<Map<String, dynamic>>?>('parameterObjects');
    parameterValues = registerOutput<List<Map<String, dynamic>>?>('parameterValues');
    pipelineId = registerOutput<String>('pipelineId');
    pipelineObjects = registerOutput<List<Map<String, dynamic>>>('pipelineObjects');
    region = registerOutput<String>('region');
  }
}
