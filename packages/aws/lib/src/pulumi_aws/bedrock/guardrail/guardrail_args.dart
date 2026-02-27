// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<String> blockedInputMessaging;

  /// Message to return when the guardrail blocks a model response.
  final pulumi.Input<String> blockedOutputsMessaging;

  /// Content policy config for a guardrail. See Content Policy Config for more information.
  final pulumi.Input<GuardrailContentPolicyConfig>? contentPolicyConfig;

  /// Contextual grounding policy config for a guardrail. See Contextual Grounding Policy Config for more information.
  final pulumi.Input<GuardrailContextualGroundingPolicyConfig>?
      contextualGroundingPolicyConfig;
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
  final pulumi.Input<GuardrailSensitiveInformationPolicyConfig>?
      sensitiveInformationPolicyConfig;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<GuardrailTimeouts>? timeouts;

  /// Topic policy config for a guardrail. See Topic Policy Config for more information.
  final pulumi.Input<GuardrailTopicPolicyConfig>? topicPolicyConfig;

  /// Word policy config for a guardrail. See Word Policy Config for more information.
  final pulumi.Input<GuardrailWordPolicyConfig>? wordPolicyConfig;

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
      map['contentPolicyConfig'] = pulumi.Input.mapOptionalInputValue<
              GuardrailContentPolicyConfig, Map<String, dynamic>>(
          contentPolicyConfigValue, (value) => value.toMap());
    }
    final contextualGroundingPolicyConfigValue =
        contextualGroundingPolicyConfig;
    if (contextualGroundingPolicyConfigValue != null) {
      map['contextualGroundingPolicyConfig'] =
          pulumi.Input.mapOptionalInputValue<
                  GuardrailContextualGroundingPolicyConfig,
                  Map<String, dynamic>>(
              contextualGroundingPolicyConfigValue, (value) => value.toMap());
    }
    final crossRegionConfigValue = crossRegionConfig;
    if (crossRegionConfigValue != null) {
      map['crossRegionConfig'] = pulumi.Input.mapOptionalInputValue<
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
      map['sensitiveInformationPolicyConfig'] =
          pulumi.Input.mapOptionalInputValue<
                  GuardrailSensitiveInformationPolicyConfig,
                  Map<String, dynamic>>(
              sensitiveInformationPolicyConfigValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<GuardrailTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final topicPolicyConfigValue = topicPolicyConfig;
    if (topicPolicyConfigValue != null) {
      map['topicPolicyConfig'] = pulumi.Input.mapOptionalInputValue<
              GuardrailTopicPolicyConfig, Map<String, dynamic>>(
          topicPolicyConfigValue, (value) => value.toMap());
    }
    final wordPolicyConfigValue = wordPolicyConfig;
    if (wordPolicyConfigValue != null) {
      map['wordPolicyConfig'] = pulumi.Input.mapOptionalInputValue<
              GuardrailWordPolicyConfig, Map<String, dynamic>>(
          wordPolicyConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory GuardrailArgs.fromMap(Map<String, dynamic> map) {
    return GuardrailArgs(
      blockedInputMessaging:
          pulumi.Input.asInput<String>(map['blockedInputMessaging']),
      blockedOutputsMessaging:
          pulumi.Input.asInput<String>(map['blockedOutputsMessaging']),
      contentPolicyConfig:
          pulumi.Input.asOptionalInput<GuardrailContentPolicyConfig>(
              map['contentPolicyConfig']),
      contextualGroundingPolicyConfig: pulumi.Input.asOptionalInput<
              GuardrailContextualGroundingPolicyConfig>(
          map['contextualGroundingPolicyConfig']),
      crossRegionConfig:
          pulumi.Input.asOptionalInput<GuardrailCrossRegionConfig>(
              map['crossRegionConfig']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      kmsKeyArn: pulumi.Input.asOptionalInput<String>(map['kmsKeyArn']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sensitiveInformationPolicyConfig: pulumi.Input.asOptionalInput<
              GuardrailSensitiveInformationPolicyConfig>(
          map['sensitiveInformationPolicyConfig']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          pulumi.Input.asOptionalInput<GuardrailTimeouts>(map['timeouts']),
      topicPolicyConfig:
          pulumi.Input.asOptionalInput<GuardrailTopicPolicyConfig>(
              map['topicPolicyConfig']),
      wordPolicyConfig: pulumi.Input.asOptionalInput<GuardrailWordPolicyConfig>(
          map['wordPolicyConfig']),
    );
  }
}
