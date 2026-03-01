// ignore_for_file: unused_element, unnecessary_cast

class MediaInsightsPipelineConfigurationElementS3RecordingSinkConfiguration {
  /// S3 URI to deliver recordings.
  final String? destination;

  /// Creates a new [MediaInsightsPipelineConfigurationElementS3RecordingSinkConfiguration].
  /// [destination] S3 URI to deliver recordings.
  MediaInsightsPipelineConfigurationElementS3RecordingSinkConfiguration({
    this.destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'destination': ?destination};
  }

  factory MediaInsightsPipelineConfigurationElementS3RecordingSinkConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return MediaInsightsPipelineConfigurationElementS3RecordingSinkConfiguration(
      destination: map['destination'] == null
          ? null
          : map['destination'] as String,
    );
  }
}
