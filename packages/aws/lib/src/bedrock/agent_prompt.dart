import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_prompt_args.dart';
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentPrompt;
/// import com.pulumi.aws.bedrock.AgentPromptArgs;
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
///     name: "MakePlaylist",
///     description: "My first prompt.",
///     defaultVariant: "Variant1",
///     variants: [{
///         name: "Variant1",
///         modelId: "amazon.titan-text-express-v1",
///         inferenceConfiguration: {
///             text: {
///                 temperature: 0.8,
///             },
///         },
///         templateType: "TEXT",
///         templateConfiguration: {
///             text: {
///                 text: "Make me a {{genre}} playlist consisting of the following number of songs: {{number}}.",
///                 inputVariables: [
///                     {
///                         name: "genre",
///                     },
///                     {
///                         name: "number",
///                     },
///                 ],
///             },
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentPrompt("example",
///     name="MakePlaylist",
///     description="My first prompt.",
///     default_variant="Variant1",
///     variants=[{
///         "name": "Variant1",
///         "model_id": "amazon.titan-text-express-v1",
///         "inference_configuration": {
///             "text": {
///                 "temperature": 0.8,
///             },
///         },
///         "template_type": "TEXT",
///         "template_configuration": {
///             "text": {
///                 "text": "Make me a {{genre}} playlist consisting of the following number of songs: {{number}}.",
///                 "input_variables": [
///                     {
///                         "name": "genre",
///                     },
///                     {
///                         "name": "number",
///                     },
///                 ],
///             },
///         },
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
///     var example = new Aws.Bedrock.AgentPrompt("example", new()
///     {
///         Name = "MakePlaylist",
///         Description = "My first prompt.",
///         DefaultVariant = "Variant1",
///         Variants = new[]
///         {
///             new Aws.Bedrock.Inputs.AgentPromptVariantArgs
///             {
///                 Name = "Variant1",
///                 ModelId = "amazon.titan-text-express-v1",
///                 InferenceConfiguration = new Aws.Bedrock.Inputs.AgentPromptVariantInferenceConfigurationArgs
///                 {
///                     Text = new Aws.Bedrock.Inputs.AgentPromptVariantInferenceConfigurationTextArgs
///                     {
///                         Temperature = 0.8,
///                     },
///                 },
///                 TemplateType = "TEXT",
///                 TemplateConfiguration = new Aws.Bedrock.Inputs.AgentPromptVariantTemplateConfigurationArgs
///                 {
///                     Text = new Aws.Bedrock.Inputs.AgentPromptVariantTemplateConfigurationTextArgs
///                     {
///                         Text = "Make me a {{genre}} playlist consisting of the following number of songs: {{number}}.",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.NewAgentPrompt(ctx, "example", &bedrock.AgentPromptArgs{
/// 			Name:           pulumi.String("MakePlaylist"),
/// 			Description:    pulumi.String("My first prompt."),
/// 			DefaultVariant: pulumi.String("Variant1"),
/// 			Variants: bedrock.AgentPromptVariantArray{
/// 				&bedrock.AgentPromptVariantArgs{
/// 					Name:    pulumi.String("Variant1"),
/// 					ModelId: pulumi.String("amazon.titan-text-express-v1"),
/// 					InferenceConfiguration: &bedrock.AgentPromptVariantInferenceConfigurationArgs{
/// 						Text: &bedrock.AgentPromptVariantInferenceConfigurationTextArgs{
/// 							Temperature: pulumi.Float64(0.8),
/// 						},
/// 					},
/// 					TemplateType: pulumi.String("TEXT"),
/// 					TemplateConfiguration: &bedrock.AgentPromptVariantTemplateConfigurationArgs{
/// 						Text: &bedrock.AgentPromptVariantTemplateConfigurationTextArgs{
/// 							Text: pulumi.String("Make me a {{genre}} playlist consisting of the following number of songs: {{number}}."),
/// 							InputVariables: bedrock.AgentPromptVariantTemplateConfigurationTextInputVariableArray{
/// 								&bedrock.AgentPromptVariantTemplateConfigurationTextInputVariableArgs{
/// 									Name: pulumi.String("genre"),
/// 								},
/// 								&bedrock.AgentPromptVariantTemplateConfigurationTextInputVariableArgs{
/// 									Name: pulumi.String("number"),
/// 								},
/// 							},
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
///         var example = new AgentPrompt("example", AgentPromptArgs.builder()
///             .name("MakePlaylist")
///             .description("My first prompt.")
///             .defaultVariant("Variant1")
///             .variants(AgentPromptVariantArgs.builder()
///                 .name("Variant1")
///                 .modelId("amazon.titan-text-express-v1")
///                 .inferenceConfiguration(AgentPromptVariantInferenceConfigurationArgs.builder()
///                     .text(AgentPromptVariantInferenceConfigurationTextArgs.builder()
///                         .temperature(0.8)
///                         .build())
///                     .build())
///                 .templateType("TEXT")
///                 .templateConfiguration(AgentPromptVariantTemplateConfigurationArgs.builder()
///                     .text(AgentPromptVariantTemplateConfigurationTextArgs.builder()
///                         .text("Make me a {{genre}} playlist consisting of the following number of songs: {{number}}.")
///                         .inputVariables(
///                             AgentPromptVariantTemplateConfigurationTextInputVariableArgs.builder()
///                                 .name("genre")
///                                 .build(),
///                             AgentPromptVariantTemplateConfigurationTextInputVariableArgs.builder()
///                                 .name("number")
///                                 .build())
///                         .build())
///                     .build())
///                 .build())
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
///       name: MakePlaylist
///       description: My first prompt.
///       defaultVariant: Variant1
///       variants:
///         - name: Variant1
///           modelId: amazon.titan-text-express-v1
///           inferenceConfiguration:
///             text:
///               temperature: 0.8
///           templateType: TEXT
///           templateConfiguration:
///             text:
///               text: 'Make me a {{genre}} playlist consisting of the following number of songs: {{number}}.'
///               inputVariables:
///                 - name: genre
///                 - name: number
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
  /// Amazon Resource Name (ARN) of the prompt.
  late final pulumi.Output<String> arn;
  /// Time at which the prompt was created.
  late final pulumi.Output<String> createdAt;
  /// Amazon Resource Name (ARN) of the KMS key that you encrypted the prompt with.
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
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdAt = registerOutput<String>('createdAt');
    this.customerEncryptionKeyArn = registerOutput<String?>('customerEncryptionKeyArn');
    this.defaultVariant = registerOutput<String?>('defaultVariant');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.updatedAt = registerOutput<String>('updatedAt');
    this.variants = registerOutput<List<AgentPromptVariant>?>('variants');
    this.version = registerOutput<String>('version');
  }
}
