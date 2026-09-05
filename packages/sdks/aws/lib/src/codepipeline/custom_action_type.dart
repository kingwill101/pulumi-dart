import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_action_type_args.dart';
import 'custom_action_type_configuration_property.dart';
import 'custom_action_type_input_artifact_details.dart';
import 'custom_action_type_output_artifact_details.dart';
import 'custom_action_type_settings.dart';
import 'custom_action_type_state.dart';

/// Provides a CodeDeploy CustomActionType
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.codepipeline.CustomActionType("example", {
///     inputArtifactDetails: {
///         maximumCount: 1,
///         minimumCount: 0,
///     },
///     outputArtifactDetails: {
///         maximumCount: 1,
///         minimumCount: 0,
///     },
///     category: "Build",
///     providerName: "example",
///     version: "1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codepipeline.CustomActionType("example",
///     input_artifact_details={
///         "maximum_count": 1,
///         "minimum_count": 0,
///     },
///     output_artifact_details={
///         "maximum_count": 1,
///         "minimum_count": 0,
///     },
///     category="Build",
///     provider_name="example",
///     version="1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CodePipeline.CustomActionType("example", new()
///     {
///         InputArtifactDetails = new Aws.CodePipeline.Inputs.CustomActionTypeInputArtifactDetailsArgs
///         {
///             MaximumCount = 1,
///             MinimumCount = 0,
///         },
///         OutputArtifactDetails = new Aws.CodePipeline.Inputs.CustomActionTypeOutputArtifactDetailsArgs
///         {
///             MaximumCount = 1,
///             MinimumCount = 0,
///         },
///         Category = "Build",
///         ProviderName = "example",
///         Version = "1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codepipeline"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := codepipeline.NewCustomActionType(ctx, "example", &codepipeline.CustomActionTypeArgs{
/// 			InputArtifactDetails: &codepipeline.CustomActionTypeInputArtifactDetailsArgs{
/// 				MaximumCount: pulumi.Int(1),
/// 				MinimumCount: pulumi.Int(0),
/// 			},
/// 			OutputArtifactDetails: &codepipeline.CustomActionTypeOutputArtifactDetailsArgs{
/// 				MaximumCount: pulumi.Int(1),
/// 				MinimumCount: pulumi.Int(0),
/// 			},
/// 			Category:     pulumi.String("Build"),
/// 			ProviderName: pulumi.String("example"),
/// 			Version:      pulumi.String("1"),
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
/// resource "aws_codepipeline_customactiontype" "example" {
///   input_artifact_details = {
///     maximum_count = 1
///     minimum_count = 0
///   }
///   output_artifact_details = {
///     maximum_count = 1
///     minimum_count = 0
///   }
///   category      = "Build"
///   provider_name = "example"
///   version       = "1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.codepipeline.CustomActionType;
/// import com.pulumi.aws.codepipeline.CustomActionTypeArgs;
/// import com.pulumi.aws.codepipeline.inputs.CustomActionTypeInputArtifactDetailsArgs;
/// import com.pulumi.aws.codepipeline.inputs.CustomActionTypeOutputArtifactDetailsArgs;
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
///         var example = new CustomActionType("example", CustomActionTypeArgs.builder()
///             .inputArtifactDetails(CustomActionTypeInputArtifactDetailsArgs.builder()
///                 .maximumCount(1)
///                 .minimumCount(0)
///                 .build())
///             .outputArtifactDetails(CustomActionTypeOutputArtifactDetailsArgs.builder()
///                 .maximumCount(1)
///                 .minimumCount(0)
///                 .build())
///             .category("Build")
///             .providerName("example")
///             .version("1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:codepipeline:CustomActionType
///     properties:
///       inputArtifactDetails:
///         maximumCount: 1
///         minimumCount: 0
///       outputArtifactDetails:
///         maximumCount: 1
///         minimumCount: 0
///       category: Build
///       providerName: example
///       version: '1'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CodeDeploy CustomActionType using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:codepipeline/customActionType:CustomActionType example Build:pulumi:1
/// ```
class CustomActionType extends pulumi.CustomResource {
  /// The action ARN.
  late final pulumi.Output<String> arn;
  /// The category of the custom action. Valid values: `Source`, `Build`, `Deploy`, `Test`, `Invoke`, `Approval`
  late final pulumi.Output<String> category;
  /// The configuration properties for the custom action. Max 10 items.
  late final pulumi.Output<List<CustomActionTypeConfigurationProperty>?> configurationProperties;
  late final pulumi.Output<CustomActionTypeInputArtifactDetails> inputArtifactDetails;
  late final pulumi.Output<CustomActionTypeOutputArtifactDetails> outputArtifactDetails;
  /// The creator of the action being called.
  late final pulumi.Output<String> owner;
  late final pulumi.Output<String> providerName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<CustomActionTypeSettings?> settings;
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<String> version;

  /// Creates a new [CustomActionType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomActionType]. {@macro pulumi_codepipeline_custom_action_type_custom_action_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomActionType(
    String name, {
    CustomActionTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codepipeline/customActionType:CustomActionType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    category = registerOutput<String>('category');
    configurationProperties = registerOutput<List<CustomActionTypeConfigurationProperty>?>('configurationProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomActionTypeConfigurationProperty>(guardedValue, (value) => CustomActionTypeConfigurationProperty.fromMap((value as Map).cast<String, dynamic>())); });
    inputArtifactDetails = registerOutput<CustomActionTypeInputArtifactDetails>('inputArtifactDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomActionTypeInputArtifactDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    outputArtifactDetails = registerOutput<CustomActionTypeOutputArtifactDetails>('outputArtifactDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomActionTypeOutputArtifactDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    owner = registerOutput<String>('owner');
    providerName = registerOutput<String>('providerName');
    region = registerOutput<String>('region');
    settings = registerOutput<CustomActionTypeSettings?>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomActionTypeSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    version = registerOutput<String>('version');
  }

  /// Gets an existing [CustomActionType] resource's state with the given [name] and [id].
  static CustomActionType get(
    String name,
    pulumi.Input<String> id, {
    CustomActionTypeState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CustomActionType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CustomActionType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codepipeline/customActionType:CustomActionType',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    category = registerOutput<String>('category');
    configurationProperties = registerOutput<List<CustomActionTypeConfigurationProperty>?>('configurationProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomActionTypeConfigurationProperty>(guardedValue, (value) => CustomActionTypeConfigurationProperty.fromMap((value as Map).cast<String, dynamic>())); });
    inputArtifactDetails = registerOutput<CustomActionTypeInputArtifactDetails>('inputArtifactDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomActionTypeInputArtifactDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    outputArtifactDetails = registerOutput<CustomActionTypeOutputArtifactDetails>('outputArtifactDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomActionTypeOutputArtifactDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    owner = registerOutput<String>('owner');
    providerName = registerOutput<String>('providerName');
    region = registerOutput<String>('region');
    settings = registerOutput<CustomActionTypeSettings?>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomActionTypeSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    version = registerOutput<String>('version');
  }

  /// Creates a typed reference to an existing [CustomActionType] resource.
  CustomActionType.reference(String urn)
    : super(
        'aws:codepipeline/customActionType:CustomActionType',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    category = registerOutput<String>('category');
    configurationProperties = registerOutput<List<CustomActionTypeConfigurationProperty>?>('configurationProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomActionTypeConfigurationProperty>(guardedValue, (value) => CustomActionTypeConfigurationProperty.fromMap((value as Map).cast<String, dynamic>())); });
    inputArtifactDetails = registerOutput<CustomActionTypeInputArtifactDetails>('inputArtifactDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomActionTypeInputArtifactDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    outputArtifactDetails = registerOutput<CustomActionTypeOutputArtifactDetails>('outputArtifactDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomActionTypeOutputArtifactDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    owner = registerOutput<String>('owner');
    providerName = registerOutput<String>('providerName');
    region = registerOutput<String>('region');
    settings = registerOutput<CustomActionTypeSettings?>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomActionTypeSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    version = registerOutput<String>('version');
  }
}
