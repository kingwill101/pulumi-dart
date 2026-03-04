// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'media_insights_pipeline_configuration_real_time_alert_configuration_rule.dart';

class MediaInsightsPipelineConfigurationRealTimeAlertConfiguration {
  /// Disables real time alert rules.
  final pulumi.Input<bool>? disabled;

  /// Collection of real time alert rules
  final pulumi.Input<
    List<MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRule>
  >
  rules;

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
      'rules':
          pulumi.Input.mapInputValue<
            List<
              MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRule
            >,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<
                  MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory MediaInsightsPipelineConfigurationRealTimeAlertConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return MediaInsightsPipelineConfigurationRealTimeAlertConfiguration(
      disabled: (() {
        final guardedValue = map['disabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      rules: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRule
        >(
          map['rules']!,
          (value) =>
              MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRule.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
