// ignore_for_file: unused_element, unnecessary_cast

class MediaInsightsPipelineConfigurationElementSnsTopicSinkConfiguration {
  /// SNS topic to deliver results.
  final String insightsTarget;

  MediaInsightsPipelineConfigurationElementSnsTopicSinkConfiguration({
    required this.insightsTarget,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['insightsTarget'] = insightsTarget;
    return map;
  }

  factory MediaInsightsPipelineConfigurationElementSnsTopicSinkConfiguration.fromMap(
      Map<String, dynamic> map) {
    return MediaInsightsPipelineConfigurationElementSnsTopicSinkConfiguration(
      insightsTarget: map['insightsTarget'] as String,
    );
  }
}
