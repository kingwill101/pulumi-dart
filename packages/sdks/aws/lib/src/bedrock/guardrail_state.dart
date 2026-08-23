// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guardrail_content_policy_config.dart';
import 'guardrail_contextual_grounding_policy_config.dart';
import 'guardrail_cross_region_config.dart';
import 'guardrail_sensitive_information_policy_config.dart';
import 'guardrail_timeouts.dart';
import 'guardrail_topic_policy_config.dart';
import 'guardrail_word_policy_config.dart';

/// Input properties used for looking up and filtering Guardrail resources.
class GuardrailState {
  /// Message to return when the guardrail blocks a prompt.
  final pulumi.Input<String>? blockedInputMessaging;
  /// Message to return when the guardrail blocks a model response.
  final pulumi.Input<String>? blockedOutputsMessaging;
  /// Content policy config for a guardrail. See Content Policy Config for more information.
  final pulumi.Input<GuardrailContentPolicyConfig>? contentPolicyConfig;
  /// Contextual grounding policy config for a guardrail. See Contextual Grounding Policy Config for more information.
  final pulumi.Input<GuardrailContextualGroundingPolicyConfig>? contextualGroundingPolicyConfig;
  /// Unix epoch timestamp in seconds for when the Guardrail was created.
  final pulumi.Input<String>? createdAt;
  final pulumi.Input<GuardrailCrossRegionConfig>? crossRegionConfig;
  /// Description of the guardrail or its version.
  final pulumi.Input<String>? description;
  /// ARN of the Guardrail.
  final pulumi.Input<String>? guardrailArn;
  /// ID of the Guardrail.
  final pulumi.Input<String>? guardrailId;
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
  /// Status of the Bedrock Guardrail. One of `READY`, `FAILED`.
  final pulumi.Input<String>? status;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<GuardrailTimeouts>? timeouts;
  /// Topic policy config for a guardrail. See Topic Policy Config for more information.
  final pulumi.Input<GuardrailTopicPolicyConfig>? topicPolicyConfig;
  /// Date and time that the Guardrail list was last updated.
  final pulumi.Input<String>? updatedAt;
  /// Version of the Guardrail.
  final pulumi.Input<String>? version;
  /// Word policy config for a guardrail. See Word Policy Config for more information.
  final pulumi.Input<GuardrailWordPolicyConfig>? wordPolicyConfig;

  /// Creates a new [GuardrailState].
  /// [blockedInputMessaging] Message to return when the guardrail blocks a prompt.
  /// [blockedOutputsMessaging] Message to return when the guardrail blocks a model response.
  /// [contentPolicyConfig] Content policy config for a guardrail. See Content Policy Config for more information.
  /// [contextualGroundingPolicyConfig] Contextual grounding policy config for a guardrail. See Contextual Grounding Policy Config for more information.
  /// [createdAt] Unix epoch timestamp in seconds for when the Guardrail was created.
  /// [crossRegionConfig] Optional.
  /// [description] Description of the guardrail or its version.
  /// [guardrailArn] ARN of the Guardrail.
  /// [guardrailId] ID of the Guardrail.
  /// [kmsKeyArn] The KMS key with which the guardrail was encrypted at rest.
  /// [name] Name of the guardrail.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sensitiveInformationPolicyConfig] Sensitive information policy config for a guardrail. See Sensitive Information Policy Config for more information.
  /// [status] Status of the Bedrock Guardrail. One of `READY`, `FAILED`.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [timeouts] Optional.
  /// [topicPolicyConfig] Topic policy config for a guardrail. See Topic Policy Config for more information.
  /// [updatedAt] Date and time that the Guardrail list was last updated.
  /// [version] Version of the Guardrail.
  /// [wordPolicyConfig] Word policy config for a guardrail. See Word Policy Config for more information.
  const GuardrailState({
    this.blockedInputMessaging,
    this.blockedOutputsMessaging,
    this.contentPolicyConfig,
    this.contextualGroundingPolicyConfig,
    this.createdAt,
    this.crossRegionConfig,
    this.description,
    this.guardrailArn,
    this.guardrailId,
    this.kmsKeyArn,
    this.name,
    this.region,
    this.sensitiveInformationPolicyConfig,
    this.status,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.topicPolicyConfig,
    this.updatedAt,
    this.version,
    this.wordPolicyConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockedInputMessaging': ?blockedInputMessaging,
      'blockedOutputsMessaging': ?blockedOutputsMessaging,
      'contentPolicyConfig': ?pulumi.Input.mapOptionalInputValue<GuardrailContentPolicyConfig, Map<String, dynamic>>(contentPolicyConfig, (value) => value.toMap()),
      'contextualGroundingPolicyConfig': ?pulumi.Input.mapOptionalInputValue<GuardrailContextualGroundingPolicyConfig, Map<String, dynamic>>(contextualGroundingPolicyConfig, (value) => value.toMap()),
      'createdAt': ?createdAt,
      'crossRegionConfig': ?pulumi.Input.mapOptionalInputValue<GuardrailCrossRegionConfig, Map<String, dynamic>>(crossRegionConfig, (value) => value.toMap()),
      'description': ?description,
      'guardrailArn': ?guardrailArn,
      'guardrailId': ?guardrailId,
      'kmsKeyArn': ?kmsKeyArn,
      'name': ?name,
      'region': ?region,
      'sensitiveInformationPolicyConfig': ?pulumi.Input.mapOptionalInputValue<GuardrailSensitiveInformationPolicyConfig, Map<String, dynamic>>(sensitiveInformationPolicyConfig, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<GuardrailTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'topicPolicyConfig': ?pulumi.Input.mapOptionalInputValue<GuardrailTopicPolicyConfig, Map<String, dynamic>>(topicPolicyConfig, (value) => value.toMap()),
      'updatedAt': ?updatedAt,
      'version': ?version,
      'wordPolicyConfig': ?pulumi.Input.mapOptionalInputValue<GuardrailWordPolicyConfig, Map<String, dynamic>>(wordPolicyConfig, (value) => value.toMap()),
    };
  }

  factory GuardrailState.fromMap(Map<String, dynamic> map) {
    return GuardrailState(
      blockedInputMessaging: (() { final guardedValue = map['blockedInputMessaging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      blockedOutputsMessaging: (() { final guardedValue = map['blockedOutputsMessaging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentPolicyConfig: (() { final guardedValue = map['contentPolicyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuardrailContentPolicyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      contextualGroundingPolicyConfig: (() { final guardedValue = map['contextualGroundingPolicyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuardrailContextualGroundingPolicyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      crossRegionConfig: (() { final guardedValue = map['crossRegionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuardrailCrossRegionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guardrailArn: (() { final guardedValue = map['guardrailArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guardrailId: (() { final guardedValue = map['guardrailId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sensitiveInformationPolicyConfig: (() { final guardedValue = map['sensitiveInformationPolicyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuardrailSensitiveInformationPolicyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuardrailTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      topicPolicyConfig: (() { final guardedValue = map['topicPolicyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuardrailTopicPolicyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wordPolicyConfig: (() { final guardedValue = map['wordPolicyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuardrailWordPolicyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
