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
    this.customerEncryptionKeyArn,
    this.defaultVariant,
    this.description,
    this.name,
    this.region,
    this.tags,
    this.variants,
  });

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
      customerEncryptionKeyArn: map['customerEncryptionKeyArn'] == null ? null : ((map['customerEncryptionKeyArn'] as String).input()).input(),
      defaultVariant: map['defaultVariant'] == null ? null : ((map['defaultVariant'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      variants: map['variants'] == null ? null : ((pulumi.Input.decodeList<AgentPromptVariant>(map['variants']!, (value) => AgentPromptVariant.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

