// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'media_insights_pipeline_configuration_real_time_alert_configuration_rule.dart';

class MediaInsightsPipelineConfigurationRealTimeAlertConfiguration {
  /// Disables real time alert rules.
  final bool? disabled;
  /// Collection of real time alert rules
  final List<MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRule> rules;

  /// Creates a new [MediaInsightsPipelineConfigurationRealTimeAlertConfiguration].
  /// [disabled] Disables real time alert rules.
  /// [rules] Collection of real time alert rules
  MediaInsightsPipelineConfigurationRealTimeAlertConfiguration({
    this.disabled,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'rules': pulumi.Input.encodeList<MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
    };
  }

  factory MediaInsightsPipelineConfigurationRealTimeAlertConfiguration.fromMap(Map<String, dynamic> map) {
    return MediaInsightsPipelineConfigurationRealTimeAlertConfiguration(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      rules: pulumi.Input.decodeList<MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRule>(map['rules'], (value) => MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

