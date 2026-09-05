import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_prompt_args.dart';
import 'agent_prompt_state.dart';
import 'agent_prompt_variant.dart';

/// Resource for managing an AWS Bedrock Agents Prompt.
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
/// const example = new aws.bedrock.AgentPrompt("example", {
///     name: "MyPrompt",
///     description: "My prompt description.",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentPrompt("example",
///     name="MyPrompt",
///     description="My prompt description.")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentPrompt("example", new()
///     {
///         Name = "MyPrompt",
///         Description = "My prompt description.",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.NewAgentPrompt(ctx, "example", &bedrock.AgentPromptArgs{
/// 			Name:        pulumi.String("MyPrompt"),
/// 			Description: pulumi.String("My prompt description."),
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
/// resource "aws_bedrock_agentprompt" "example" {
///   name        = "MyPrompt"
///   description = "My prompt description."
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentPrompt;
/// import com.pulumi.aws.bedrock.AgentPromptArgs;
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
///         var example = new AgentPrompt("example", AgentPromptArgs.builder()
///             .name("MyPrompt")
///             .description("My prompt description.")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentPrompt
///     properties:
///       name: MyPrompt
///       description: My prompt description.
/// ```
///
///
/// ### With Variants
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentPrompt("example", {
///     variants: [{
///         inferenceConfiguration: {
///             text: {
///                 temperature: 0.8,
///             },
///         },
///         templateConfiguration: {
///             text: {
///                 inputVariables: [
///                     {
///                         name: "genre",
///                     },
///                     {
///                         name: "number",
///                     },
///                 ],
///                 text: "Make me a {{genre}} playlist consisting of the following number of songs: {{number}}.",
///             },
///         },
///         name: "Variant1",
///         modelId: "amazon.titan-text-express-v1",
///         templateType: "TEXT",
///     }],
///     name: "MakePlaylist",
///     description: "My first prompt.",
///     defaultVariant: "Variant1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentPrompt("example",
///     variants=[{
///         "inference_configuration": {
///             "text": {
///                 "temperature": 0.8,
///             },
///         },
///         "template_configuration": {
///             "text": {
///                 "input_variables": [
///                     {
///                         "name": "genre",
///                     },
///                     {
///                         "name": "number",
///                     },
///                 ],
///                 "text": "Make me a {{genre}} playlist consisting of the following number of songs: {{number}}.",
///             },
///         },
///         "name": "Variant1",
///         "model_id": "amazon.titan-text-express-v1",
///         "template_type": "TEXT",
///     }],
///     name="MakePlaylist",
///     description="My first prompt.",
///     default_variant="Variant1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentPrompt("example", new()
///     {
///         Variants = new[]
///         {
///             new Aws.Bedrock.Inputs.AgentPromptVariantArgs
///             {
///                 InferenceConfiguration = new Aws.Bedrock.Inputs.AgentPromptVariantInferenceConfigurationArgs
///                 {
///                     Text = new Aws.Bedrock.Inputs.AgentPromptVariantInferenceConfigurationTextArgs
///                     {
///                         Temperature = 0.8,
///                     },
///                 },
///                 TemplateConfiguration = new Aws.Bedrock.Inputs.AgentPromptVariantTemplateConfigurationArgs
///                 {
///                     Text = new Aws.Bedrock.Inputs.AgentPromptVariantTemplateConfigurationTextArgs
///                     {
///                         InputVariables = new[]
///                         {
///                             new Aws.Bedrock.Inputs.AgentPromptVariantTemplateConfigurationTextInputVariableArgs
///                             {
///                                 Name = "genre",
///                             },
///                             new Aws.Bedrock.Inputs.AgentPromptVariantTemplateConfigurationTextInputVariableArgs
///                             {
///                                 Name = "number",
///                             },
///                         },
///                         Text = "Make me a {{genre}} playlist consisting of the following number of songs: {{number}}.",
///                     },
///                 },
///                 Name = "Variant1",
///                 ModelId = "amazon.titan-text-express-v1",
///                 TemplateType = "TEXT",
///             },
///         },
///         Name = "MakePlaylist",
///         Description = "My first prompt.",
///         DefaultVariant = "Variant1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.NewAgentPrompt(ctx, "example", &bedrock.AgentPromptArgs{
/// 			Variants: bedrock.AgentPromptVariantArray{
/// 				&bedrock.AgentPromptVariantArgs{
/// 					InferenceConfiguration: &bedrock.AgentPromptVariantInferenceConfigurationArgs{
/// 						Text: &bedrock.AgentPromptVariantInferenceConfigurationTextArgs{
/// 							Temperature: pulumi.Float64(0.8),
/// 						},
/// 					},
/// 					TemplateConfiguration: &bedrock.AgentPromptVariantTemplateConfigurationArgs{
/// 						Text: &bedrock.AgentPromptVariantTemplateConfigurationTextArgs{
/// 							InputVariables: bedrock.AgentPromptVariantTemplateConfigurationTextInputVariableArray{
/// 								&bedrock.AgentPromptVariantTemplateConfigurationTextInputVariableArgs{
/// 									Name: pulumi.String("genre"),
/// 								},
/// 								&bedrock.AgentPromptVariantTemplateConfigurationTextInputVariableArgs{
/// 									Name: pulumi.String("number"),
/// 								},
/// 							},
/// 							Text: pulumi.String("Make me a {{genre}} playlist consisting of the following number of songs: {{number}}."),
/// 						},
/// 					},
/// 					Name:         pulumi.String("Variant1"),
/// 					ModelId:      pulumi.String("amazon.titan-text-express-v1"),
/// 					TemplateType: pulumi.String("TEXT"),
/// 				},
/// 			},
/// 			Name:           pulumi.String("MakePlaylist"),
/// 			Description:    pulumi.String("My first prompt."),
/// 			DefaultVariant: pulumi.String("Variant1"),
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
/// resource "aws_bedrock_agentprompt" "example" {
///   variants {
///     inference_configuration = {
///       text = {
///         temperature = 0.8
///       }
///     }
///     template_configuration = {
///       text = {
///         input_variables = [{
///           "name" = "genre"
///           }, {
///           "name" = "number"
///         }]
///         text = "Make me a {{genre}} playlist consisting of the following number of songs: {{number}}."
///       }
///     }
///     name          = "Variant1"
///     model_id      = "amazon.titan-text-express-v1"
///     template_type = "TEXT"
///   }
///   name            = "MakePlaylist"
///   description     = "My first prompt."
///   default_variant = "Variant1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentPrompt;
/// import com.pulumi.aws.bedrock.AgentPromptArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentPromptVariantArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentPromptVariantInferenceConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentPromptVariantInferenceConfigurationTextArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentPromptVariantTemplateConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentPromptVariantTemplateConfigurationTextArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentPromptVariantTemplateConfigurationTextInputVariableArgs;
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
///         var example = new AgentPrompt("example", AgentPromptArgs.builder()
///             .variants(AgentPromptVariantArgs.builder()
///                 .inferenceConfiguration(AgentPromptVariantInferenceConfigurationArgs.builder()
///                     .text(AgentPromptVariantInferenceConfigurationTextArgs.builder()
///                         .temperature(0.8)
///                         .build())
///                     .build())
///                 .templateConfiguration(AgentPromptVariantTemplateConfigurationArgs.builder()
///                     .text(AgentPromptVariantTemplateConfigurationTextArgs.builder()
///                         .inputVariables(
///                             AgentPromptVariantTemplateConfigurationTextInputVariableArgs.builder()
///                                 .name("genre")
///                                 .build(),
///                             AgentPromptVariantTemplateConfigurationTextInputVariableArgs.builder()
///                                 .name("number")
///                                 .build())
///                         .text("Make me a {{genre}} playlist consisting of the following number of songs: {{number}}.")
///                         .build())
///                     .build())
///                 .name("Variant1")
///                 .modelId("amazon.titan-text-express-v1")
///                 .templateType("TEXT")
///                 .build())
///             .name("MakePlaylist")
///             .description("My first prompt.")
///             .defaultVariant("Variant1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentPrompt
///     properties:
///       variants:
///         - inferenceConfiguration:
///             text:
///               temperature: 0.8
///           templateConfiguration:
///             text:
///               inputVariables:
///                 - name: genre
///                 - name: number
///               text: 'Make me a {{genre}} playlist consisting of the following number of songs: {{number}}.'
///           name: Variant1
///           modelId: amazon.titan-text-express-v1
///           templateType: TEXT
///       name: MakePlaylist
///       description: My first prompt.
///       defaultVariant: Variant1
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock Agents Prompt using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentPrompt:AgentPrompt example 1A2BC3DEFG
/// ```
class AgentPrompt extends pulumi.CustomResource {
  /// ARN of the prompt.
  late final pulumi.Output<String> arn;
  /// Time at which the prompt was created.
  late final pulumi.Output<String> createdAt;
  /// ARN of the KMS key that you encrypted the prompt with.
  late final pulumi.Output<String?> customerEncryptionKeyArn;
  /// Name of the default variant for your prompt.
  late final pulumi.Output<String?> defaultVariant;
  /// Description of the prompt.
  late final pulumi.Output<String?> description;
  /// Name of the prompt.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Time at which the prompt was last updated.
  late final pulumi.Output<String> updatedAt;
  /// A list of objects, each containing details about a variant of the prompt. See Variant for more information.
  late final pulumi.Output<List<AgentPromptVariant>?> variants;
  /// Version of the prompt. When you create a prompt, the version created is the `DRAFT` version.
  late final pulumi.Output<String> version;

  /// Creates a new [AgentPrompt].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentPrompt]. {@macro pulumi_bedrock_agent_prompt_agent_prompt_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentPrompt(
    String name, {
    AgentPromptArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentPrompt:AgentPrompt',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    customerEncryptionKeyArn = registerOutput<String?>('customerEncryptionKeyArn');
    defaultVariant = registerOutput<String?>('defaultVariant');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
    variants = registerOutput<List<AgentPromptVariant>?>('variants', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPromptVariant>(guardedValue, (value) => AgentPromptVariant.fromMap((value as Map).cast<String, dynamic>())); });
    version = registerOutput<String>('version');
  }

  /// Gets an existing [AgentPrompt] resource's state with the given [name] and [id].
  static AgentPrompt get(
    String name,
    pulumi.Input<String> id, {
    AgentPromptState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AgentPrompt._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AgentPrompt._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentPrompt:AgentPrompt',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    customerEncryptionKeyArn = registerOutput<String?>('customerEncryptionKeyArn');
    defaultVariant = registerOutput<String?>('defaultVariant');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
    variants = registerOutput<List<AgentPromptVariant>?>('variants', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPromptVariant>(guardedValue, (value) => AgentPromptVariant.fromMap((value as Map).cast<String, dynamic>())); });
    version = registerOutput<String>('version');
  }

  /// Creates a typed reference to an existing [AgentPrompt] resource.
  AgentPrompt.reference(String urn)
    : super(
        'aws:bedrock/agentPrompt:AgentPrompt',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    customerEncryptionKeyArn = registerOutput<String?>('customerEncryptionKeyArn');
    defaultVariant = registerOutput<String?>('defaultVariant');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
    variants = registerOutput<List<AgentPromptVariant>?>('variants', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPromptVariant>(guardedValue, (value) => AgentPromptVariant.fromMap((value as Map).cast<String, dynamic>())); });
    version = registerOutput<String>('version');
  }
}
