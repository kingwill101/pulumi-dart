// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../media_insights_pipeline_configuration_real_time_alert_configuration_rule/media_insights_pipeline_configuration_real_time_alert_configuration_rule.dart';

class MediaInsightsPipelineConfigurationRealTimeAlertConfiguration {
  /// Disables real time alert rules.
  final bool? disabled;

  /// Collection of real time alert rules
  final List<MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRule>
      rules;

  MediaInsightsPipelineConfigurationRealTimeAlertConfiguration({
    this.disabled,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    map['rules'] = Input.encodeList<
        MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRule,
        Map<String, dynamic>>(rules, (value) => value.toMap());
    return map;
  }

  factory MediaInsightsPipelineConfigurationRealTimeAlertConfiguration.fromMap(
      Map<String, dynamic> map) {
    return MediaInsightsPipelineConfigurationRealTimeAlertConfiguration(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      rules: Input.decodeList<
              MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRule>(
          map['rules'],
          (value) =>
              MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRule
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
