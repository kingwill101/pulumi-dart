// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MediaInsightsPipelineConfigurationElementS3RecordingSinkConfiguration {
  /// S3 URI to deliver recordings.
  final pulumi.Input<String>? destination;

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
      destination: (() {
        final guardedValue = map['destination'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
