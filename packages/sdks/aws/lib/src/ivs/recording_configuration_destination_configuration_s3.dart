// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecordingConfigurationDestinationConfigurationS3 {
  /// S3 bucket name where recorded videos will be stored.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> bucketName;

  /// Creates a new [RecordingConfigurationDestinationConfigurationS3].
  /// [bucketName] S3 bucket name where recorded videos will be stored.
  const RecordingConfigurationDestinationConfigurationS3({
    required this.bucketName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
    };
  }

  factory RecordingConfigurationDestinationConfigurationS3.fromMap(Map<String, dynamic> map) {
    return RecordingConfigurationDestinationConfigurationS3(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
    );
  }
}
