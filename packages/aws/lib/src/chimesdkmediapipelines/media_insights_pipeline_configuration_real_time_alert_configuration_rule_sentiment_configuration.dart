// ignore_for_file: unused_element, unnecessary_cast


class MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleSentimentConfiguration {
  /// Rule name.
  final String ruleName;
  /// Sentiment type to match.
  final String sentimentType;
  /// Analysis interval.
  final int timePeriod;

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
      ruleName: map['ruleName'] as String,
      sentimentType: map['sentimentType'] as String,
      timePeriod: map['timePeriod'] as int,
    );
  }
}

