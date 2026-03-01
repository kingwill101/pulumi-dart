// ignore_for_file: unused_element, unnecessary_cast

class MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfiguration {
  /// Kinesis Data Stream to deliver results.
  final String insightsTarget;

  /// Creates a new [MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfiguration].
  /// [insightsTarget] Kinesis Data Stream to deliver results.
  MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfiguration({
    required this.insightsTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'insightsTarget': insightsTarget};
  }

  factory MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfiguration(
      insightsTarget: map['insightsTarget'] as String,
    );
  }
}
