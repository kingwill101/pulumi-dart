// ignore_for_file: unused_element, unnecessary_cast

import 'recording_configuration_destination_configuration_s3.dart';

class RecordingConfigurationDestinationConfiguration {
  /// S3 destination configuration where recorded videos will be stored.
  final RecordingConfigurationDestinationConfigurationS3 s3;

  /// Creates a new [RecordingConfigurationDestinationConfiguration].
  /// [s3] S3 destination configuration where recorded videos will be stored.
  RecordingConfigurationDestinationConfiguration({
    required this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3': s3.toMap(),
    };
  }

  factory RecordingConfigurationDestinationConfiguration.fromMap(Map<String, dynamic> map) {
    return RecordingConfigurationDestinationConfiguration(
      s3: RecordingConfigurationDestinationConfigurationS3.fromMap((map['s3'] as Map).cast<String, dynamic>()),
    );
  }
}

