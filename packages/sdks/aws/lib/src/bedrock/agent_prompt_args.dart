// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_prompt_variant.dart';

/// {@template pulumi_bedrock_agent_prompt_agent_prompt_args_doc}
/// The set of arguments for AgentPrompt.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agent_prompt_agent_prompt_args_doc}
class AgentPromptArgs {
  /// Amazon Resource Name (ARN) of the KMS key that you encrypted the prompt with.
  final pulumi.Input<String>? customerEncryptionKeyArn;
  /// Name of the default variant for your prompt.
  final pulumi.Input<String>? defaultVariant;
  /// Description of the prompt.
  final pulumi.Input<String>? description;
  /// Name of the prompt.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A list of objects, each containing details about a variant of the prompt. See Variant for more information.
  final pulumi.Input<List<AgentPromptVariant>>? variants;

  /// Creates a new [AgentPromptArgs].
  /// [customerEncryptionKeyArn] Amazon Resource Name (ARN) of the KMS key that you encrypted the prompt with.
  /// [defaultVariant] Name of the default variant for your prompt.
  /// [description] Description of the prompt.
  /// [name] Name of the prompt.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [variants] A list of objects, each containing details about a variant of the prompt. See Variant for more information.
  AgentPromptArgs({
    pulumi.Output<String>? customerEncryptionKeyArn,
    pulumi.Output<String>? defaultVariant,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<AgentPromptVariant>>? variants,
  }) :
      customerEncryptionKeyArn = pulumi.Input.asOptionalInput<String>(customerEncryptionKeyArn),
      defaultVariant = pulumi.Input.asOptionalInput<String>(defaultVariant),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      variants = pulumi.Input.asOptionalInput<List<AgentPromptVariant>>(variants);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerEncryptionKeyArn': ?customerEncryptionKeyArn,
      'defaultVariant': ?defaultVariant,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'variants': ?pulumi.Input.mapOptionalInputValue<List<AgentPromptVariant>, List<Map<String, dynamic>>>(variants, (value) => pulumi.Input.encodeList<AgentPromptVariant, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentPromptArgs.fromMap(Map<String, dynamic> map) {
    return AgentPromptArgs(
      customerEncryptionKeyArn: map['customerEncryptionKeyArn'] == null ? null : pulumi.Output.create<String>(map['customerEncryptionKeyArn'] as String),
      defaultVariant: map['defaultVariant'] == null ? null : pulumi.Output.create<String>(map['defaultVariant'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      variants: map['variants'] == null ? null : pulumi.Output.create<List<AgentPromptVariant>>(pulumi.Input.decodeList<AgentPromptVariant>(map['variants'], (value) => AgentPromptVariant.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

