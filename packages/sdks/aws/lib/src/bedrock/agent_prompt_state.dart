// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_prompt_variant.dart';

/// Input properties used for looking up and filtering AgentPrompt resources.
class AgentPromptState {
  /// Amazon Resource Name (ARN) of the prompt.
  final pulumi.Input<String>? arn;
  /// Time at which the prompt was created.
  final pulumi.Input<String>? createdAt;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Time at which the prompt was last updated.
  final pulumi.Input<String>? updatedAt;
  /// A list of objects, each containing details about a variant of the prompt. See Variant for more information.
  final pulumi.Input<List<AgentPromptVariant>>? variants;
  /// Version of the prompt. When you create a prompt, the version created is the `DRAFT` version.
  final pulumi.Input<String>? version;

  /// Creates a new [AgentPromptState].
  /// [arn] Amazon Resource Name (ARN) of the prompt.
  /// [createdAt] Time at which the prompt was created.
  /// [customerEncryptionKeyArn] Amazon Resource Name (ARN) of the KMS key that you encrypted the prompt with.
  /// [defaultVariant] Name of the default variant for your prompt.
  /// [description] Description of the prompt.
  /// [name] Name of the prompt.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [updatedAt] Time at which the prompt was last updated.
  /// [variants] A list of objects, each containing details about a variant of the prompt. See Variant for more information.
  /// [version] Version of the prompt. When you create a prompt, the version created is the `DRAFT` version.
  AgentPromptState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? customerEncryptionKeyArn,
    pulumi.Output<String>? defaultVariant,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? updatedAt,
    pulumi.Output<List<AgentPromptVariant>>? variants,
    pulumi.Output<String>? version,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      customerEncryptionKeyArn = pulumi.Input.asOptionalInput<String>(customerEncryptionKeyArn),
      defaultVariant = pulumi.Input.asOptionalInput<String>(defaultVariant),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt),
      variants = pulumi.Input.asOptionalInput<List<AgentPromptVariant>>(variants),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdAt': ?createdAt,
      'customerEncryptionKeyArn': ?customerEncryptionKeyArn,
      'defaultVariant': ?defaultVariant,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'updatedAt': ?updatedAt,
      'variants': ?pulumi.Input.mapOptionalInputValue<List<AgentPromptVariant>, List<Map<String, dynamic>>>(variants, (value) => pulumi.Input.encodeList<AgentPromptVariant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': ?version,
    };
  }

  factory AgentPromptState.fromMap(Map<String, dynamic> map) {
    return AgentPromptState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      customerEncryptionKeyArn: map['customerEncryptionKeyArn'] == null ? null : pulumi.Output.create<String>(map['customerEncryptionKeyArn'] as String),
      defaultVariant: map['defaultVariant'] == null ? null : pulumi.Output.create<String>(map['defaultVariant'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
      variants: map['variants'] == null ? null : pulumi.Output.create<List<AgentPromptVariant>>(pulumi.Input.decodeList<AgentPromptVariant>(map['variants'], (value) => AgentPromptVariant.fromMap((value as Map).cast<String, dynamic>()))),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

