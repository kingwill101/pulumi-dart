// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleIssueDetectionConfiguration {
  /// Rule name.
  final pulumi.Input<String> ruleName;

  /// Creates a new [MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleIssueDetectionConfiguration].
  /// [ruleName] Rule name.
  const MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleIssueDetectionConfiguration({
    required this.ruleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleName': ruleName,
    };
  }

  factory MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleIssueDetectionConfiguration.fromMap(Map<String, dynamic> map) {
    return MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleIssueDetectionConfiguration(
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
    );
  }
}

