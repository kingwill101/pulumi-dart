import 'package:pulumi/pulumi.dart' as pulumi;
import '../agent_prompt_variant/agent_prompt_variant.dart';
import 'agent_prompt_args.dart';

/// Resource for managing an AWS Bedrock Agents Prompt.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With Variants
///
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
    this.customerEncryptionKeyArn =
        registerOutput<String?>('customerEncryptionKeyArn');
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
