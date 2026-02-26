// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agent_prompt_variant/agent_prompt_variant.dart';

/// The set of arguments for AgentPrompt.
class AgentPromptArgs {
  /// Amazon Resource Name (ARN) of the KMS key that you encrypted the prompt with.
  final Input<String>? customerEncryptionKeyArn;

  /// Name of the default variant for your prompt.
  final Input<String>? defaultVariant;

  /// Description of the prompt.
  final Input<String>? description;

  /// Name of the prompt.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// A list of objects, each containing details about a variant of the prompt. See Variant for more information.
  final Input<List<AgentPromptVariant>>? variants;

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
    final map = <String, dynamic>{};
    final customerEncryptionKeyArnValue = customerEncryptionKeyArn;
    if (customerEncryptionKeyArnValue != null) {
      map['customerEncryptionKeyArn'] = customerEncryptionKeyArnValue;
    }
    final defaultVariantValue = defaultVariant;
    if (defaultVariantValue != null) {
      map['defaultVariant'] = defaultVariantValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final variantsValue = variants;
    if (variantsValue != null) {
      map['variants'] = Input.mapOptionalInputValue<List<AgentPromptVariant>,
              List<Map<String, dynamic>>>(
          variantsValue,
          (value) => Input.encodeList<AgentPromptVariant, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    return map;
  }

  factory AgentPromptArgs.fromMap(Map<String, dynamic> map) {
    return AgentPromptArgs(
      customerEncryptionKeyArn:
          Input.asOptionalInput<String>(map['customerEncryptionKeyArn']),
      defaultVariant: Input.asOptionalInput<String>(map['defaultVariant']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      variants:
          Input.asOptionalInput<List<AgentPromptVariant>>(map['variants']),
    );
  }
}
