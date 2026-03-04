// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guardrail_topic_policy_config_tier_config.dart';
import 'guardrail_topic_policy_config_topics_config.dart';

class GuardrailTopicPolicyConfig {
  /// Configuration block for the topic policy tier. See Tier Config for more information.
  final pulumi.Input<List<GuardrailTopicPolicyConfigTierConfig>>? tierConfigs;

  /// List of topic configs in topic policy. See Topics Config for more information.
  final pulumi.Input<List<GuardrailTopicPolicyConfigTopicsConfig>>?
  topicsConfigs;

  /// Creates a new [GuardrailTopicPolicyConfig].
  /// [tierConfigs] Configuration block for the topic policy tier. See Tier Config for more information.
  /// [topicsConfigs] List of topic configs in topic policy. See Topics Config for more information.
  GuardrailTopicPolicyConfig({this.tierConfigs, this.topicsConfigs});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tierConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<GuardrailTopicPolicyConfigTierConfig>,
            List<Map<String, dynamic>>
          >(
            tierConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GuardrailTopicPolicyConfigTierConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'topicsConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<GuardrailTopicPolicyConfigTopicsConfig>,
            List<Map<String, dynamic>>
          >(
            topicsConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GuardrailTopicPolicyConfigTopicsConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GuardrailTopicPolicyConfig.fromMap(Map<String, dynamic> map) {
    return GuardrailTopicPolicyConfig(
      tierConfigs: (() {
        final guardedValue = map['tierConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GuardrailTopicPolicyConfigTierConfig>(
            guardedValue,
            (value) => GuardrailTopicPolicyConfigTierConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      topicsConfigs: (() {
        final guardedValue = map['topicsConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GuardrailTopicPolicyConfigTopicsConfig>(
            guardedValue,
            (value) => GuardrailTopicPolicyConfigTopicsConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
