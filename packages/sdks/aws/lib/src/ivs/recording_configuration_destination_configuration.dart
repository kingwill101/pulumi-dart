// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recording_configuration_destination_configuration_s3.dart';

class RecordingConfigurationDestinationConfiguration {
  /// S3 destination configuration where recorded videos will be stored.
  final pulumi.Input<RecordingConfigurationDestinationConfigurationS3> s3;

  /// Creates a new [RecordingConfigurationDestinationConfiguration].
  /// [s3] S3 destination configuration where recorded videos will be stored.
  RecordingConfigurationDestinationConfiguration({
    required this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3': pulumi.Input.mapInputValue<RecordingConfigurationDestinationConfigurationS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
    };
  }

  factory RecordingConfigurationDestinationConfiguration.fromMap(Map<String, dynamic> map) {
    return RecordingConfigurationDestinationConfiguration(
      s3: pulumi.Input.fromValue(RecordingConfigurationDestinationConfigurationS3.fromMap((map['s3']! as Map).cast<String, dynamic>())),
    );
  }
}

