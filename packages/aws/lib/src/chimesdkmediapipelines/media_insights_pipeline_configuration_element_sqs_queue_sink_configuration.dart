// ignore_for_file: unused_element, unnecessary_cast

class MediaInsightsPipelineConfigurationElementSqsQueueSinkConfiguration {
  /// SQS queue to deliver results.
  final String insightsTarget;

  /// Creates a new [MediaInsightsPipelineConfigurationElementSqsQueueSinkConfiguration].
  /// [insightsTarget] SQS queue to deliver results.
  MediaInsightsPipelineConfigurationElementSqsQueueSinkConfiguration({
    required this.insightsTarget,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['insightsTarget'] = insightsTarget;
    return map;
  }

  factory MediaInsightsPipelineConfigurationElementSqsQueueSinkConfiguration.fromMap(
      Map<String, dynamic> map) {
    return MediaInsightsPipelineConfigurationElementSqsQueueSinkConfiguration(
      insightsTarget: map['insightsTarget'] as String,
    );
  }
}
