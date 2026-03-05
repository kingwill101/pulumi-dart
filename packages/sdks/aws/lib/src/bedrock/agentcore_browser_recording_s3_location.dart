// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreBrowserRecordingS3Location {
  /// Name of the S3 bucket where recordings are stored.
  final pulumi.Input<String> bucket;
  /// S3 key prefix for recording files.
  final pulumi.Input<String> prefix;

  /// Creates a new [AgentcoreBrowserRecordingS3Location].
  /// [bucket] Name of the S3 bucket where recordings are stored.
  /// [prefix] S3 key prefix for recording files.
  AgentcoreBrowserRecordingS3Location({
    required this.bucket,
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'prefix': prefix,
    };
  }

  factory AgentcoreBrowserRecordingS3Location.fromMap(Map<String, dynamic> map) {
    return AgentcoreBrowserRecordingS3Location(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
    );
  }
}

