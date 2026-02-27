// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../guardrail_content_policy_config/guardrail_content_policy_config.dart';
import '../guardrail_contextual_grounding_policy_config/guardrail_contextual_grounding_policy_config.dart';
import '../guardrail_cross_region_config/guardrail_cross_region_config.dart';
import '../guardrail_sensitive_information_policy_config/guardrail_sensitive_information_policy_config.dart';
import '../guardrail_timeouts/guardrail_timeouts.dart';
import '../guardrail_topic_policy_config/guardrail_topic_policy_config.dart';
import '../guardrail_word_policy_config/guardrail_word_policy_config.dart';

/// The set of arguments for Guardrail.
class GuardrailArgs {
  /// Message to return when the guardrail blocks a prompt.
  final Input<String> blockedInputMessaging;

  /// Message to return when the guardrail blocks a model response.
  final Input<String> blockedOutputsMessaging;

  /// Content policy config for a guardrail. See Content Policy Config for more information.
  final Input<GuardrailContentPolicyConfig>? contentPolicyConfig;

  /// Contextual grounding policy config for a guardrail. See Contextual Grounding Policy Config for more information.
  final Input<GuardrailContextualGroundingPolicyConfig>?
      contextualGroundingPolicyConfig;
  final Input<GuardrailCrossRegionConfig>? crossRegionConfig;

  /// Description of the guardrail or its version.
  final Input<String>? description;

  /// The KMS key with which the guardrail was encrypted at rest.
  final Input<String>? kmsKeyArn;

  /// Name of the guardrail.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Sensitive information policy config for a guardrail. See Sensitive Information Policy Config for more information.
  final Input<GuardrailSensitiveInformationPolicyConfig>?
      sensitiveInformationPolicyConfig;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<GuardrailTimeouts>? timeouts;

  /// Topic policy config for a guardrail. See Topic Policy Config for more information.
  final Input<GuardrailTopicPolicyConfig>? topicPolicyConfig;

  /// Word policy config for a guardrail. See Word Policy Config for more information.
  final Input<GuardrailWordPolicyConfig>? wordPolicyConfig;

  GuardrailArgs({
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
    final map = <String, dynamic>{};
    map['blockedInputMessaging'] = blockedInputMessaging;
    map['blockedOutputsMessaging'] = blockedOutputsMessaging;
    final contentPolicyConfigValue = contentPolicyConfig;
    if (contentPolicyConfigValue != null) {
      map['contentPolicyConfig'] = Input.mapOptionalInputValue<
              GuardrailContentPolicyConfig, Map<String, dynamic>>(
          contentPolicyConfigValue, (value) => value.toMap());
    }
    final contextualGroundingPolicyConfigValue =
        contextualGroundingPolicyConfig;
    if (contextualGroundingPolicyConfigValue != null) {
      map['contextualGroundingPolicyConfig'] = Input.mapOptionalInputValue<
              GuardrailContextualGroundingPolicyConfig, Map<String, dynamic>>(
          contextualGroundingPolicyConfigValue, (value) => value.toMap());
    }
    final crossRegionConfigValue = crossRegionConfig;
    if (crossRegionConfigValue != null) {
      map['crossRegionConfig'] = Input.mapOptionalInputValue<
              GuardrailCrossRegionConfig, Map<String, dynamic>>(
          crossRegionConfigValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sensitiveInformationPolicyConfigValue =
        sensitiveInformationPolicyConfig;
    if (sensitiveInformationPolicyConfigValue != null) {
      map['sensitiveInformationPolicyConfig'] = Input.mapOptionalInputValue<
              GuardrailSensitiveInformationPolicyConfig, Map<String, dynamic>>(
          sensitiveInformationPolicyConfigValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] =
          Input.mapOptionalInputValue<GuardrailTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    final topicPolicyConfigValue = topicPolicyConfig;
    if (topicPolicyConfigValue != null) {
      map['topicPolicyConfig'] = Input.mapOptionalInputValue<
              GuardrailTopicPolicyConfig, Map<String, dynamic>>(
          topicPolicyConfigValue, (value) => value.toMap());
    }
    final wordPolicyConfigValue = wordPolicyConfig;
    if (wordPolicyConfigValue != null) {
      map['wordPolicyConfig'] = Input.mapOptionalInputValue<
              GuardrailWordPolicyConfig, Map<String, dynamic>>(
          wordPolicyConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory GuardrailArgs.fromMap(Map<String, dynamic> map) {
    return GuardrailArgs(
      blockedInputMessaging:
          Input.asInput<String>(map['blockedInputMessaging']),
      blockedOutputsMessaging:
          Input.asInput<String>(map['blockedOutputsMessaging']),
      contentPolicyConfig: Input.asOptionalInput<GuardrailContentPolicyConfig>(
          map['contentPolicyConfig']),
      contextualGroundingPolicyConfig:
          Input.asOptionalInput<GuardrailContextualGroundingPolicyConfig>(
              map['contextualGroundingPolicyConfig']),
      crossRegionConfig: Input.asOptionalInput<GuardrailCrossRegionConfig>(
          map['crossRegionConfig']),
      description: Input.asOptionalInput<String>(map['description']),
      kmsKeyArn: Input.asOptionalInput<String>(map['kmsKeyArn']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      sensitiveInformationPolicyConfig:
          Input.asOptionalInput<GuardrailSensitiveInformationPolicyConfig>(
              map['sensitiveInformationPolicyConfig']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<GuardrailTimeouts>(map['timeouts']),
      topicPolicyConfig: Input.asOptionalInput<GuardrailTopicPolicyConfig>(
          map['topicPolicyConfig']),
      wordPolicyConfig: Input.asOptionalInput<GuardrailWordPolicyConfig>(
          map['wordPolicyConfig']),
    );
  }
}
