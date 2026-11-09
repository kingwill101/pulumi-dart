import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_args.dart';
import 'project_custom_output_configuration.dart';
import 'project_data_automation_library_configuration.dart';
import 'project_encryption_configuration.dart';
import 'project_override_configuration.dart';
import 'project_standard_output_configuration.dart';
import 'project_state.dart';
import 'project_timeouts.dart';

/// Manages an Amazon Bedrock Data Automation Project. A project defines the standard output that Amazon Bedrock Data Automation extracts from files and the blueprints it uses for custom output.
///
/// &gt; **NOTE:** Amazon Bedrock Data Automation fills in default values for settings in `standardOutputConfiguration` and `overrideConfiguration` that you don't set. Terraform keeps only the blocks and arguments you set in those two configurations, so the service defaults don't appear in state. Changes made outside Terraform to settings you haven't set aren't detected.
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
/// const example = new aws.bedrockdataautomation.Project("example", {name: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrockdataautomation.Project("example", name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.BedrockDataAutomation.Project("example", new()
///     {
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrockdataautomation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrockdataautomation.NewProject(ctx, "example", &bedrockdataautomation.ProjectArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_bedrockdataautomation_project" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrockdataautomation.Project;
/// import com.pulumi.aws.bedrockdataautomation.ProjectArgs;
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
///         var example = new Project("example", ProjectArgs.builder()
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrockdataautomation:Project
///     properties:
///       name: example
/// ```
///
///
/// ### Standard and Custom Output
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrockdataautomation.Blueprint("example", {});
/// const exampleProject = new aws.bedrockdataautomation.Project("example", {
///     standardOutputConfiguration: {
///         document: {
///             extraction: {
///                 boundingBox: {
///                     state: "ENABLED",
///                 },
///                 granularity: {
///                     types: [
///                         "PAGE",
///                         "ELEMENT",
///                     ],
///                 },
///             },
///             generativeField: {
///                 state: "ENABLED",
///             },
///             outputFormat: {
///                 additionalFileFormat: {
///                     state: "DISABLED",
///                 },
///                 textFormat: {
///                     types: ["MARKDOWN"],
///                 },
///             },
///         },
///     },
///     customOutputConfiguration: {
///         blueprints: [{
///             blueprintArn: example.arn,
///             blueprintStage: "LIVE",
///         }],
///     },
///     overrideConfiguration: {
///         document: {
///             splitter: {
///                 state: "ENABLED",
///             },
///         },
///     },
///     name: "example",
///     description: "Pay stub processing",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrockdataautomation.Blueprint("example")
/// example_project = aws.bedrockdataautomation.Project("example",
///     standard_output_configuration={
///         "document": {
///             "extraction": {
///                 "bounding_box": {
///                     "state": "ENABLED",
///                 },
///                 "granularity": {
///                     "types": [
///                         "PAGE",
///                         "ELEMENT",
///                     ],
///                 },
///             },
///             "generative_field": {
///                 "state": "ENABLED",
///             },
///             "output_format": {
///                 "additional_file_format": {
///                     "state": "DISABLED",
///                 },
///                 "text_format": {
///                     "types": ["MARKDOWN"],
///                 },
///             },
///         },
///     },
///     custom_output_configuration={
///         "blueprints": [{
///             "blueprint_arn": example.arn,
///             "blueprint_stage": "LIVE",
///         }],
///     },
///     override_configuration={
///         "document": {
///             "splitter": {
///                 "state": "ENABLED",
///             },
///         },
///     },
///     name="example",
///     description="Pay stub processing")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.BedrockDataAutomation.Blueprint("example");
///
///     var exampleProject = new Aws.BedrockDataAutomation.Project("example", new()
///     {
///         StandardOutputConfiguration = new Aws.BedrockDataAutomation.Inputs.ProjectStandardOutputConfigurationArgs
///         {
///             Document = new Aws.BedrockDataAutomation.Inputs.ProjectStandardOutputConfigurationDocumentArgs
///             {
///                 Extraction = new Aws.BedrockDataAutomation.Inputs.ProjectStandardOutputConfigurationDocumentExtractionArgs
///                 {
///                     BoundingBox = new Aws.BedrockDataAutomation.Inputs.ProjectStandardOutputConfigurationDocumentExtractionBoundingBoxArgs
///                     {
///                         State = "ENABLED",
///                     },
///                     Granularity = new Aws.BedrockDataAutomation.Inputs.ProjectStandardOutputConfigurationDocumentExtractionGranularityArgs
///                     {
///                         Types = new[]
///                         {
///                             "PAGE",
///                             "ELEMENT",
///                         },
///                     },
///                 },
///                 GenerativeField = new Aws.BedrockDataAutomation.Inputs.ProjectStandardOutputConfigurationDocumentGenerativeFieldArgs
///                 {
///                     State = "ENABLED",
///                 },
///                 OutputFormat = new Aws.BedrockDataAutomation.Inputs.ProjectStandardOutputConfigurationDocumentOutputFormatArgs
///                 {
///                     AdditionalFileFormat = new Aws.BedrockDataAutomation.Inputs.ProjectStandardOutputConfigurationDocumentOutputFormatAdditionalFileFormatArgs
///                     {
///                         State = "DISABLED",
///                     },
///                     TextFormat = new Aws.BedrockDataAutomation.Inputs.ProjectStandardOutputConfigurationDocumentOutputFormatTextFormatArgs
///                     {
///                         Types = new[]
///                         {
///                             "MARKDOWN",
///                         },
///                     },
///                 },
///             },
///         },
///         CustomOutputConfiguration = new Aws.BedrockDataAutomation.Inputs.ProjectCustomOutputConfigurationArgs
///         {
///             Blueprints = new[]
///             {
///                 new Aws.BedrockDataAutomation.Inputs.ProjectCustomOutputConfigurationBlueprintArgs
///                 {
///                     BlueprintArn = example.Arn,
///                     BlueprintStage = "LIVE",
///                 },
///             },
///         },
///         OverrideConfiguration = new Aws.BedrockDataAutomation.Inputs.ProjectOverrideConfigurationArgs
///         {
///             Document = new Aws.BedrockDataAutomation.Inputs.ProjectOverrideConfigurationDocumentArgs
///             {
///                 Splitter = new Aws.BedrockDataAutomation.Inputs.ProjectOverrideConfigurationDocumentSplitterArgs
///                 {
///                     State = "ENABLED",
///                 },
///             },
///         },
///         Name = "example",
///         Description = "Pay stub processing",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrockdataautomation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := bedrockdataautomation.NewBlueprint(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrockdataautomation.NewProject(ctx, "example", &bedrockdataautomation.ProjectArgs{
/// 			StandardOutputConfiguration: &bedrockdataautomation.ProjectStandardOutputConfigurationArgs{
/// 				Document: &bedrockdataautomation.ProjectStandardOutputConfigurationDocumentArgs{
/// 					Extraction: &bedrockdataautomation.ProjectStandardOutputConfigurationDocumentExtractionArgs{
/// 						BoundingBox: &bedrockdataautomation.ProjectStandardOutputConfigurationDocumentExtractionBoundingBoxArgs{
/// 							State: pulumi.String("ENABLED"),
/// 						},
/// 						Granularity: &bedrockdataautomation.ProjectStandardOutputConfigurationDocumentExtractionGranularityArgs{
/// 							Types: pulumi.StringArray{
/// 								pulumi.String("PAGE"),
/// 								pulumi.String("ELEMENT"),
/// 							},
/// 						},
/// 					},
/// 					GenerativeField: &bedrockdataautomation.ProjectStandardOutputConfigurationDocumentGenerativeFieldArgs{
/// 						State: pulumi.String("ENABLED"),
/// 					},
/// 					OutputFormat: &bedrockdataautomation.ProjectStandardOutputConfigurationDocumentOutputFormatArgs{
/// 						AdditionalFileFormat: &bedrockdataautomation.ProjectStandardOutputConfigurationDocumentOutputFormatAdditionalFileFormatArgs{
/// 							State: pulumi.String("DISABLED"),
/// 						},
/// 						TextFormat: &bedrockdataautomation.ProjectStandardOutputConfigurationDocumentOutputFormatTextFormatArgs{
/// 							Types: pulumi.StringArray{
/// 								pulumi.String("MARKDOWN"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			CustomOutputConfiguration: &bedrockdataautomation.ProjectCustomOutputConfigurationArgs{
/// 				Blueprints: bedrockdataautomation.ProjectCustomOutputConfigurationBlueprintArray{
/// 					&bedrockdataautomation.ProjectCustomOutputConfigurationBlueprintArgs{
/// 						BlueprintArn:   example.Arn,
/// 						BlueprintStage: pulumi.String("LIVE"),
/// 					},
/// 				},
/// 			},
/// 			OverrideConfiguration: &bedrockdataautomation.ProjectOverrideConfigurationArgs{
/// 				Document: &bedrockdataautomation.ProjectOverrideConfigurationDocumentArgs{
/// 					Splitter: &bedrockdataautomation.ProjectOverrideConfigurationDocumentSplitterArgs{
/// 						State: pulumi.String("ENABLED"),
/// 					},
/// 				},
/// 			},
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("Pay stub processing"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_bedrockdataautomation_blueprint" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
/// }
/// resource "aws_bedrockdataautomation_project" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   standard_output_configuration {
///     document {
///       extraction {
///         bounding_box {
///           state = "ENABLED"
///         }
///         granularity {
///           types = ["PAGE", "ELEMENT"]
///         }
///       }
///       generative_field {
///         state = "ENABLED"
///       }
///       output_format {
///         additional_file_format {
///           state = "DISABLED"
///         }
///         text_format {
///           types = ["MARKDOWN"]
///         }
///       }
///     }
///   }
///   custom_output_configuration {
///     blueprint {
///       blueprint_arn   = aws_bedrockdataautomation_blueprint.example.arn
///       blueprint_stage = "LIVE"
///     }
///   }
///   override_configuration {
///     document {
///       splitter {
///         state = "ENABLED"
///       }
///     }
///   }
///   name        = "example"
///   description = "Pay stub processing"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrockdataautomation.Blueprint;
/// import com.pulumi.aws.bedrockdataautomation.Project;
/// import com.pulumi.aws.bedrockdataautomation.ProjectArgs;
/// import com.pulumi.aws.bedrockdataautomation.inputs.ProjectStandardOutputConfigurationArgs;
/// import com.pulumi.aws.bedrockdataautomation.inputs.ProjectStandardOutputConfigurationDocumentArgs;
/// import com.pulumi.aws.bedrockdataautomation.inputs.ProjectStandardOutputConfigurationDocumentExtractionArgs;
/// import com.pulumi.aws.bedrockdataautomation.inputs.ProjectStandardOutputConfigurationDocumentExtractionBoundingBoxArgs;
/// import com.pulumi.aws.bedrockdataautomation.inputs.ProjectStandardOutputConfigurationDocumentExtractionGranularityArgs;
/// import com.pulumi.aws.bedrockdataautomation.inputs.ProjectStandardOutputConfigurationDocumentGenerativeFieldArgs;
/// import com.pulumi.aws.bedrockdataautomation.inputs.ProjectStandardOutputConfigurationDocumentOutputFormatArgs;
/// import com.pulumi.aws.bedrockdataautomation.inputs.ProjectStandardOutputConfigurationDocumentOutputFormatAdditionalFileFormatArgs;
/// import com.pulumi.aws.bedrockdataautomation.inputs.ProjectStandardOutputConfigurationDocumentOutputFormatTextFormatArgs;
/// import com.pulumi.aws.bedrockdataautomation.inputs.ProjectCustomOutputConfigurationArgs;
/// import com.pulumi.aws.bedrockdataautomation.inputs.ProjectCustomOutputConfigurationBlueprintArgs;
/// import com.pulumi.aws.bedrockdataautomation.inputs.ProjectOverrideConfigurationArgs;
/// import com.pulumi.aws.bedrockdataautomation.inputs.ProjectOverrideConfigurationDocumentArgs;
/// import com.pulumi.aws.bedrockdataautomation.inputs.ProjectOverrideConfigurationDocumentSplitterArgs;
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
///         var example = new Blueprint("example");
///
///         var exampleProject = new Project("exampleProject", ProjectArgs.builder()
///             .standardOutputConfiguration(ProjectStandardOutputConfigurationArgs.builder()
///                 .document(ProjectStandardOutputConfigurationDocumentArgs.builder()
///                     .extraction(ProjectStandardOutputConfigurationDocumentExtractionArgs.builder()
///                         .boundingBox(ProjectStandardOutputConfigurationDocumentExtractionBoundingBoxArgs.builder()
///                             .state("ENABLED")
///                             .build())
///                         .granularity(ProjectStandardOutputConfigurationDocumentExtractionGranularityArgs.builder()
///                             .types(
///                                 "PAGE",
///                                 "ELEMENT")
///                             .build())
///                         .build())
///                     .generativeField(ProjectStandardOutputConfigurationDocumentGenerativeFieldArgs.builder()
///                         .state("ENABLED")
///                         .build())
///                     .outputFormat(ProjectStandardOutputConfigurationDocumentOutputFormatArgs.builder()
///                         .additionalFileFormat(ProjectStandardOutputConfigurationDocumentOutputFormatAdditionalFileFormatArgs.builder()
///                             .state("DISABLED")
///                             .build())
///                         .textFormat(ProjectStandardOutputConfigurationDocumentOutputFormatTextFormatArgs.builder()
///                             .types("MARKDOWN")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .customOutputConfiguration(ProjectCustomOutputConfigurationArgs.builder()
///                 .blueprints(ProjectCustomOutputConfigurationBlueprintArgs.builder()
///                     .blueprintArn(example.arn())
///                     .blueprintStage("LIVE")
///                     .build())
///                 .build())
///             .overrideConfiguration(ProjectOverrideConfigurationArgs.builder()
///                 .document(ProjectOverrideConfigurationDocumentArgs.builder()
///                     .splitter(ProjectOverrideConfigurationDocumentSplitterArgs.builder()
///                         .state("ENABLED")
///                         .build())
///                     .build())
///                 .build())
///             .name("example")
///             .description("Pay stub processing")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrockdataautomation:Blueprint
///   exampleProject:
///     type: aws:bedrockdataautomation:Project
///     name: example
///     properties:
///       standardOutputConfiguration:
///         document:
///           extraction:
///             boundingBox:
///               state: ENABLED
///             granularity:
///               types:
///                 - PAGE
///                 - ELEMENT
///           generativeField:
///             state: ENABLED
///           outputFormat:
///             additionalFileFormat:
///               state: DISABLED
///             textFormat:
///               types:
///                 - MARKDOWN
///       customOutputConfiguration:
///         blueprints:
///           - blueprintArn: ${example.arn}
///             blueprintStage: LIVE
///       overrideConfiguration:
///         document:
///           splitter:
///             state: ENABLED
///       name: example
///       description: Pay stub processing
/// ```
///
///
/// ## Import
///
/// Import doesn't populate `standardOutputConfiguration` or `overrideConfiguration`. The next plan shows them as updates, and applying the plan sends the configured values to the service.
///
///
/// ### Identity Schema
///
/// #### Required
///
/// * `arn` (String) ARN of the project.
///
///
/// Using `pulumi import`, import Bedrock Data Automation Project using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrockdataautomation/project:Project example arn:aws:bedrock:us-west-2:123456789012:data-automation-project/abcd1234efgh
/// ```
class Project extends pulumi.CustomResource {
  /// ARN of the project.
  late final pulumi.Output<String> arn;
  /// Time the project was created, in RFC3339 format.
  late final pulumi.Output<String> creationTime;
  /// Blueprints used for custom output. See `customOutputConfiguration` Block below.
  late final pulumi.Output<ProjectCustomOutputConfiguration?> customOutputConfiguration;
  /// Data automation libraries used by the project. See `dataAutomationLibraryConfiguration` Block below.
  late final pulumi.Output<ProjectDataAutomationLibraryConfiguration?> dataAutomationLibraryConfiguration;
  /// Description of the project.
  late final pulumi.Output<String?> description;
  /// Encryption settings for the project. See `encryptionConfiguration` Block below.
  late final pulumi.Output<ProjectEncryptionConfiguration?> encryptionConfiguration;
  /// Time the project was last modified, in RFC3339 format.
  late final pulumi.Output<String> lastModifiedTime;
  /// Name of the project. Changing this value forces a new resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Processing overrides for each modality. See `overrideConfiguration` Block below.
  late final pulumi.Output<ProjectOverrideConfiguration?> overrideConfiguration;
  /// Stage of the project.
  late final pulumi.Output<String> projectStage;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Standard output to extract for each modality. See `standardOutputConfiguration` Block below.
  late final pulumi.Output<ProjectStandardOutputConfiguration?> standardOutputConfiguration;
  /// Status of the project.
  late final pulumi.Output<String> status;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ProjectTimeouts?> timeouts;
  /// Type of API the project works with. Valid values: `ASYNC`, `SYNC`. Defaults to `ASYNC`. Changing this value forces a new resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Project].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Project]. {@macro pulumi_bedrockdataautomation_project_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Project(
    String name, {
    ProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrockdataautomation/project:Project',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.54.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    creationTime = registerOutput<String>('creationTime');
    customOutputConfiguration = registerOutput<ProjectCustomOutputConfiguration?>('customOutputConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectCustomOutputConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataAutomationLibraryConfiguration = registerOutput<ProjectDataAutomationLibraryConfiguration?>('dataAutomationLibraryConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectDataAutomationLibraryConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    encryptionConfiguration = registerOutput<ProjectEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    overrideConfiguration = registerOutput<ProjectOverrideConfiguration?>('overrideConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectOverrideConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    projectStage = registerOutput<String>('projectStage');
    region = registerOutput<String>('region');
    standardOutputConfiguration = registerOutput<ProjectStandardOutputConfiguration?>('standardOutputConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectStandardOutputConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<ProjectTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Gets an existing [Project] resource's state with the given [name] and [id].
  static Project get(
    String name,
    pulumi.Input<String> id, {
    ProjectState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Project._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Project._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrockdataautomation/project:Project',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    creationTime = registerOutput<String>('creationTime');
    customOutputConfiguration = registerOutput<ProjectCustomOutputConfiguration?>('customOutputConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectCustomOutputConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataAutomationLibraryConfiguration = registerOutput<ProjectDataAutomationLibraryConfiguration?>('dataAutomationLibraryConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectDataAutomationLibraryConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    encryptionConfiguration = registerOutput<ProjectEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    overrideConfiguration = registerOutput<ProjectOverrideConfiguration?>('overrideConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectOverrideConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    projectStage = registerOutput<String>('projectStage');
    region = registerOutput<String>('region');
    standardOutputConfiguration = registerOutput<ProjectStandardOutputConfiguration?>('standardOutputConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectStandardOutputConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<ProjectTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Project] resource.
  Project.reference(String urn)
    : super(
        'aws:bedrockdataautomation/project:Project',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    creationTime = registerOutput<String>('creationTime');
    customOutputConfiguration = registerOutput<ProjectCustomOutputConfiguration?>('customOutputConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectCustomOutputConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataAutomationLibraryConfiguration = registerOutput<ProjectDataAutomationLibraryConfiguration?>('dataAutomationLibraryConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectDataAutomationLibraryConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    encryptionConfiguration = registerOutput<ProjectEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    overrideConfiguration = registerOutput<ProjectOverrideConfiguration?>('overrideConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectOverrideConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    projectStage = registerOutput<String>('projectStage');
    region = registerOutput<String>('region');
    standardOutputConfiguration = registerOutput<ProjectStandardOutputConfiguration?>('standardOutputConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectStandardOutputConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<ProjectTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
