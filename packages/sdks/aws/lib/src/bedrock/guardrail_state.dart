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
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<GuardrailTimeouts>? timeouts;
  /// Topic policy config for a guardrail. See Topic Policy Config for more information.
  final pulumi.Input<GuardrailTopicPolicyConfig>? topicPolicyConfig;
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
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [timeouts] Optional.
  /// [topicPolicyConfig] Topic policy config for a guardrail. See Topic Policy Config for more information.
  /// [version] Version of the Guardrail.
  /// [wordPolicyConfig] Word policy config for a guardrail. See Word Policy Config for more information.
  GuardrailState({
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
      'version': ?version,
      'wordPolicyConfig': ?pulumi.Input.mapOptionalInputValue<GuardrailWordPolicyConfig, Map<String, dynamic>>(wordPolicyConfig, (value) => value.toMap()),
    };
  }

  factory GuardrailState.fromMap(Map<String, dynamic> map) {
    return GuardrailState(
      blockedInputMessaging: map['blockedInputMessaging'] == null ? null : ((map['blockedInputMessaging'] as String).input()).input(),
      blockedOutputsMessaging: map['blockedOutputsMessaging'] == null ? null : ((map['blockedOutputsMessaging'] as String).input()).input(),
      contentPolicyConfig: map['contentPolicyConfig'] == null ? null : ((GuardrailContentPolicyConfig.fromMap((map['contentPolicyConfig']! as Map).cast<String, dynamic>())).input()).input(),
      contextualGroundingPolicyConfig: map['contextualGroundingPolicyConfig'] == null ? null : ((GuardrailContextualGroundingPolicyConfig.fromMap((map['contextualGroundingPolicyConfig']! as Map).cast<String, dynamic>())).input()).input(),
      createdAt: map['createdAt'] == null ? null : ((map['createdAt'] as String).input()).input(),
      crossRegionConfig: map['crossRegionConfig'] == null ? null : ((GuardrailCrossRegionConfig.fromMap((map['crossRegionConfig']! as Map).cast<String, dynamic>())).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      guardrailArn: map['guardrailArn'] == null ? null : ((map['guardrailArn'] as String).input()).input(),
      guardrailId: map['guardrailId'] == null ? null : ((map['guardrailId'] as String).input()).input(),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : ((map['kmsKeyArn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      sensitiveInformationPolicyConfig: map['sensitiveInformationPolicyConfig'] == null ? null : ((GuardrailSensitiveInformationPolicyConfig.fromMap((map['sensitiveInformationPolicyConfig']! as Map).cast<String, dynamic>())).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((GuardrailTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      topicPolicyConfig: map['topicPolicyConfig'] == null ? null : ((GuardrailTopicPolicyConfig.fromMap((map['topicPolicyConfig']! as Map).cast<String, dynamic>())).input()).input(),
      version: map['version'] == null ? null : ((map['version'] as String).input()).input(),
      wordPolicyConfig: map['wordPolicyConfig'] == null ? null : ((GuardrailWordPolicyConfig.fromMap((map['wordPolicyConfig']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

