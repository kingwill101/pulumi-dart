// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guardrail_topic_policy_config_tier_config.dart';
import 'guardrail_topic_policy_config_topics_config.dart';

class GuardrailTopicPolicyConfig {
  /// Configuration block for the topic policy tier. See Tier Config for more information.
  final List<GuardrailTopicPolicyConfigTierConfig>? tierConfigs;

  /// List of topic configs in topic policy. See Topics Config for more information.
  final List<GuardrailTopicPolicyConfigTopicsConfig>? topicsConfigs;

  /// Creates a new [GuardrailTopicPolicyConfig].
  /// [tierConfigs] Configuration block for the topic policy tier. See Tier Config for more information.
  /// [topicsConfigs] List of topic configs in topic policy. See Topics Config for more information.
  GuardrailTopicPolicyConfig({
    this.tierConfigs,
    this.topicsConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final tierConfigsValue = tierConfigs;
    if (tierConfigsValue != null) {
      map['tierConfigs'] = pulumi.Input.encodeList<
          GuardrailTopicPolicyConfigTierConfig,
          Map<String, dynamic>>(tierConfigsValue, (value) => value.toMap());
    }
    final topicsConfigsValue = topicsConfigs;
    if (topicsConfigsValue != null) {
      map['topicsConfigs'] = pulumi.Input.encodeList<
          GuardrailTopicPolicyConfigTopicsConfig,
          Map<String, dynamic>>(topicsConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GuardrailTopicPolicyConfig.fromMap(Map<String, dynamic> map) {
    return GuardrailTopicPolicyConfig(
      tierConfigs: map['tierConfigs'] == null
          ? null
          : pulumi.Input.decodeList<GuardrailTopicPolicyConfigTierConfig>(
              map['tierConfigs'],
              (value) => GuardrailTopicPolicyConfigTierConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      topicsConfigs: map['topicsConfigs'] == null
          ? null
          : pulumi.Input.decodeList<GuardrailTopicPolicyConfigTopicsConfig>(
              map['topicsConfigs'],
              (value) => GuardrailTopicPolicyConfigTopicsConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
