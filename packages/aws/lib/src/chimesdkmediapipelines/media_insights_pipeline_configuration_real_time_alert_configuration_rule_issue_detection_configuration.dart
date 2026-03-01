// ignore_for_file: unused_element, unnecessary_cast


class MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleIssueDetectionConfiguration {
  /// Rule name.
  final String ruleName;

  /// Creates a new [MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleIssueDetectionConfiguration].
  /// [ruleName] Rule name.
  MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleIssueDetectionConfiguration({
    required this.ruleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleName': ruleName,
    };
  }

  factory MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleIssueDetectionConfiguration.fromMap(Map<String, dynamic> map) {
    return MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleIssueDetectionConfiguration(
      ruleName: map['ruleName'] as String,
    );
  }
}

