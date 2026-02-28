// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreBrowserRecordingS3Location {
  /// Name of the S3 bucket where recordings are stored.
  final String bucket;

  /// S3 key prefix for recording files.
  final String prefix;

  /// Creates a new [AgentcoreBrowserRecordingS3Location].
  /// [bucket] Name of the S3 bucket where recordings are stored.
  /// [prefix] S3 key prefix for recording files.
  AgentcoreBrowserRecordingS3Location({
    required this.bucket,
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['prefix'] = prefix;
    return map;
  }

  factory AgentcoreBrowserRecordingS3Location.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreBrowserRecordingS3Location(
      bucket: map['bucket'] as String,
      prefix: map['prefix'] as String,
    );
  }
}
