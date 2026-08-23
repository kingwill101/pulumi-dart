import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_args.dart';
import 'control_state.dart';

/// Resource for managing an AWS Audit Manager Control.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.auditmanager.Control("example", {
///     name: "example",
///     controlMappingSources: [{
///         sourceName: "example",
///         sourceSetUpOption: "Procedural_Controls_Mapping",
///         sourceType: "MANUAL",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.auditmanager.Control("example",
///     name="example",
///     control_mapping_sources=[{
///         "source_name": "example",
///         "source_set_up_option": "Procedural_Controls_Mapping",
///         "source_type": "MANUAL",
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
///     var example = new Aws.Auditmanager.Control("example", new()
///     {
///         Name = "example",
///         ControlMappingSources = new[]
///         {
///             new Aws.Auditmanager.Inputs.ControlControlMappingSourceArgs
///             {
///                 SourceName = "example",
///                 SourceSetUpOption = "Procedural_Controls_Mapping",
///                 SourceType = "MANUAL",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/auditmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := auditmanager.NewControl(ctx, "example", &auditmanager.ControlArgs{
/// 			Name: pulumi.String("example"),
/// 			ControlMappingSources: auditmanager.ControlControlMappingSourceArray{
/// 				&auditmanager.ControlControlMappingSourceArgs{
/// 					SourceName:        pulumi.String("example"),
/// 					SourceSetUpOption: pulumi.String("Procedural_Controls_Mapping"),
/// 					SourceType:        pulumi.String("MANUAL"),
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
/// resource "aws_auditmanager_control" "example" {
///   name = "example"
///   control_mapping_sources {
///     source_name          = "example"
///     source_set_up_option = "Procedural_Controls_Mapping"
///     source_type          = "MANUAL"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.auditmanager.Control;
/// import com.pulumi.aws.auditmanager.ControlArgs;
/// import com.pulumi.aws.auditmanager.inputs.ControlControlMappingSourceArgs;
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
///         var example = new Control("example", ControlArgs.builder()
///             .name("example")
///             .controlMappingSources(ControlControlMappingSourceArgs.builder()
///                 .sourceName("example")
///                 .sourceSetUpOption("Procedural_Controls_Mapping")
///                 .sourceType("MANUAL")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:auditmanager:Control
///     properties:
///       name: example
///       controlMappingSources:
///         - sourceName: example
///           sourceSetUpOption: Procedural_Controls_Mapping
///           sourceType: MANUAL
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) Unique identifier for the control.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import an Audit Manager Control using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:auditmanager/control:Control example abc123-de45
/// ```
class Control extends pulumi.CustomResource {
  /// Recommended actions to carry out if the control isn't fulfilled.
  late final pulumi.Output<String?> actionPlanInstructions;
  /// Title of the action plan for remediating the control.
  late final pulumi.Output<String?> actionPlanTitle;
  /// Amazon Resource Name (ARN) of the control.
  late final pulumi.Output<String> arn;
  /// Data mapping sources. See `controlMappingSources` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> controlMappingSources;
  /// Description of the control.
  late final pulumi.Output<String?> description;
  /// Name of the control.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to the control. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Steps to follow to determine if the control is satisfied.
  late final pulumi.Output<String?> testingInformation;
  /// Type of control, such as a custom control or a standard control.
  late final pulumi.Output<String> type;

  /// Creates a new [Control].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Control]. {@macro pulumi_auditmanager_control_control_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Control(
    String name, {
    ControlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:auditmanager/control:Control',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actionPlanInstructions = registerOutput<String?>('actionPlanInstructions');
    actionPlanTitle = registerOutput<String?>('actionPlanTitle');
    arn = registerOutput<String>('arn');
    controlMappingSources = registerOutput<List<Map<String, dynamic>>?>('controlMappingSources');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    testingInformation = registerOutput<String?>('testingInformation');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [Control] resource's state with the given [name] and [id].
  static Control get(
    String name,
    pulumi.Input<String> id, {
    ControlState? state,
  }) {
    return Control._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Control._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:auditmanager/control:Control',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actionPlanInstructions = registerOutput<String?>('actionPlanInstructions');
    actionPlanTitle = registerOutput<String?>('actionPlanTitle');
    arn = registerOutput<String>('arn');
    controlMappingSources = registerOutput<List<Map<String, dynamic>>?>('controlMappingSources');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    testingInformation = registerOutput<String?>('testingInformation');
    type = registerOutput<String>('type');
  }
}
