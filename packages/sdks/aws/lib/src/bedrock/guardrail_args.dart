// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guardrail_content_policy_config.dart';
import 'guardrail_contextual_grounding_policy_config.dart';
import 'guardrail_cross_region_config.dart';
import 'guardrail_sensitive_information_policy_config.dart';
import 'guardrail_timeouts.dart';
import 'guardrail_topic_policy_config.dart';
import 'guardrail_word_policy_config.dart';

/// {@template pulumi_bedrock_guardrail_guardrail_args_doc}
/// The set of arguments for Guardrail.
/// {@endtemplate}
/// {@macro pulumi_bedrock_guardrail_guardrail_args_doc}
class GuardrailArgs {
  /// Message to return when the guardrail blocks a prompt.
  final pulumi.Input<String> blockedInputMessaging;
  /// Message to return when the guardrail blocks a model response.
  final pulumi.Input<String> blockedOutputsMessaging;
  /// Content policy config for a guardrail. See Content Policy Config for more information.
  final pulumi.Input<GuardrailContentPolicyConfig>? contentPolicyConfig;
  /// Contextual grounding policy config for a guardrail. See Contextual Grounding Policy Config for more information.
  final pulumi.Input<GuardrailContextualGroundingPolicyConfig>? contextualGroundingPolicyConfig;
  final pulumi.Input<GuardrailCrossRegionConfig>? crossRegionConfig;
  /// Description of the guardrail or its version.
  final pulumi.Input<String>? description;
  /// The KMS key with which the guardrail was encrypted at rest.
  final pulumi.Input<String>? kmsKeyArn;
  /// Name of the guardrail.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Sensitive information policy config for a guardrail. See Sensitive Information Policy Config for more information.
  final pulumi.Input<GuardrailSensitiveInformationPolicyConfig>? sensitiveInformationPolicyConfig;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<GuardrailTimeouts>? timeouts;
  /// Topic policy config for a guardrail. See Topic Policy Config for more information.
  final pulumi.Input<GuardrailTopicPolicyConfig>? topicPolicyConfig;
  /// Word policy config for a guardrail. See Word Policy Config for more information.
  final pulumi.Input<GuardrailWordPolicyConfig>? wordPolicyConfig;

  /// Creates a new [GuardrailArgs].
  /// [blockedInputMessaging] Message to return when the guardrail blocks a prompt.
  /// [blockedOutputsMessaging] Message to return when the guardrail blocks a model response.
  /// [contentPolicyConfig] Content policy config for a guardrail. See Content Policy Config for more information.
  /// [contextualGroundingPolicyConfig] Contextual grounding policy config for a guardrail. See Contextual Grounding Policy Config for more information.
  /// [crossRegionConfig] Optional.
  /// [description] Description of the guardrail or its version.
  /// [kmsKeyArn] The KMS key with which the guardrail was encrypted at rest.
  /// [name] Name of the guardrail.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sensitiveInformationPolicyConfig] Sensitive information policy config for a guardrail. See Sensitive Information Policy Config for more information.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [topicPolicyConfig] Topic policy config for a guardrail. See Topic Policy Config for more information.
  /// [wordPolicyConfig] Word policy config for a guardrail. See Word Policy Config for more information.
  const GuardrailArgs({
    required this.blockedInputMessaging,
    required this.blockedOutputsMessaging,
    this.contentPolicyConfig,
    this.contextualGroundingPolicyConfig,
    this.crossRegionConfig,
    this.description,
    this.kmsKeyArn,
    this.name,
    this.region,
    this.sensitiveInformationPolicyConfig,
    this.tags,
    this.timeouts,
    this.topicPolicyConfig,
    this.wordPolicyConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockedInputMessaging': blockedInputMessaging,
      'blockedOutputsMessaging': blockedOutputsMessaging,
      'contentPolicyConfig': ?pulumi.Input.mapOptionalInputValue<GuardrailContentPolicyConfig, Map<String, dynamic>>(contentPolicyConfig, (value) => value.toMap()),
      'contextualGroundingPolicyConfig': ?pulumi.Input.mapOptionalInputValue<GuardrailContextualGroundingPolicyConfig, Map<String, dynamic>>(contextualGroundingPolicyConfig, (value) => value.toMap()),
      'crossRegionConfig': ?pulumi.Input.mapOptionalInputValue<GuardrailCrossRegionConfig, Map<String, dynamic>>(crossRegionConfig, (value) => value.toMap()),
      'description': ?description,
      'kmsKeyArn': ?kmsKeyArn,
      'name': ?name,
      'region': ?region,
      'sensitiveInformationPolicyConfig': ?pulumi.Input.mapOptionalInputValue<GuardrailSensitiveInformationPolicyConfig, Map<String, dynamic>>(sensitiveInformationPolicyConfig, (value) => value.toMap()),
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<GuardrailTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'topicPolicyConfig': ?pulumi.Input.mapOptionalInputValue<GuardrailTopicPolicyConfig, Map<String, dynamic>>(topicPolicyConfig, (value) => value.toMap()),
      'wordPolicyConfig': ?pulumi.Input.mapOptionalInputValue<GuardrailWordPolicyConfig, Map<String, dynamic>>(wordPolicyConfig, (value) => value.toMap()),
    };
  }

  factory GuardrailArgs.fromMap(Map<String, dynamic> map) {
    return GuardrailArgs(
      blockedInputMessaging: pulumi.Input.fromValue(map['blockedInputMessaging'] as String),
      blockedOutputsMessaging: pulumi.Input.fromValue(map['blockedOutputsMessaging'] as String),
      contentPolicyConfig: (() { final guardedValue = map['contentPolicyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuardrailContentPolicyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      contextualGroundingPolicyConfig: (() { final guardedValue = map['contextualGroundingPolicyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuardrailContextualGroundingPolicyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      crossRegionConfig: (() { final guardedValue = map['crossRegionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuardrailCrossRegionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sensitiveInformationPolicyConfig: (() { final guardedValue = map['sensitiveInformationPolicyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuardrailSensitiveInformationPolicyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuardrailTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      topicPolicyConfig: (() { final guardedValue = map['topicPolicyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuardrailTopicPolicyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      wordPolicyConfig: (() { final guardedValue = map['wordPolicyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuardrailWordPolicyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

