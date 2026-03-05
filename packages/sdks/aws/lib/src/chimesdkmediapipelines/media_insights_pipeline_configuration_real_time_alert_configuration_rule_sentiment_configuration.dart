// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleSentimentConfiguration {
  /// Rule name.
  final pulumi.Input<String> ruleName;
  /// Sentiment type to match.
  final pulumi.Input<String> sentimentType;
  /// Analysis interval.
  final pulumi.Input<int> timePeriod;

  /// Creates a new [MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleSentimentConfiguration].
  /// [ruleName] Rule name.
  /// [sentimentType] Sentiment type to match.
  /// [timePeriod] Analysis interval.
  MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleSentimentConfiguration({
    required this.ruleName,
    required this.sentimentType,
    required this.timePeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleName': ruleName,
      'sentimentType': sentimentType,
      'timePeriod': timePeriod,
    };
  }

  factory MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleSentimentConfiguration.fromMap(Map<String, dynamic> map) {
    return MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleSentimentConfiguration(
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
      sentimentType: pulumi.Input.fromValue(map['sentimentType'] as String),
      timePeriod: pulumi.Input.fromValue(map['timePeriod'] as int),
    );
  }
}

