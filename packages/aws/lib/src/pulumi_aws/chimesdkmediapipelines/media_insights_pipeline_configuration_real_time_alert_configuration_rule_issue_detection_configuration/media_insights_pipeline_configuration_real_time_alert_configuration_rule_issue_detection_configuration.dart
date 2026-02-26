// ignore_for_file: unused_element, unnecessary_cast

class MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleIssueDetectionConfiguration {
  /// Rule name.
  final String ruleName;

  MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleIssueDetectionConfiguration({
    required this.ruleName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ruleName'] = ruleName;
    return map;
  }

  factory MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleIssueDetectionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleIssueDetectionConfiguration(
      ruleName: map['ruleName'] as String,
    );
  }
}
