// ignore_for_file: unused_element, unnecessary_cast

class MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfiguration {
  /// Kinesis Data Stream to deliver results.
  final String insightsTarget;

  MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfiguration({
    required this.insightsTarget,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['insightsTarget'] = insightsTarget;
    return map;
  }

  factory MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfiguration.fromMap(
      Map<String, dynamic> map) {
    return MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfiguration(
      insightsTarget: map['insightsTarget'] as String,
    );
  }
}
