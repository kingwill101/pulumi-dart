// ignore_for_file: unused_element, unnecessary_cast

class PipeLogConfigurationS3LogDestination {
  /// Name of the Amazon S3 bucket to which EventBridge delivers the log records for the pipe.
  final String bucketName;

  /// Amazon Web Services account that owns the Amazon S3 bucket to which EventBridge delivers the log records for the pipe.
  final String bucketOwner;

  /// EventBridge format for the log records. Valid values `json`, `plain` and `w3c`.
  final String? outputFormat;

  /// Prefix text with which to begin Amazon S3 log object names.
  final String? prefix;

  PipeLogConfigurationS3LogDestination({
    required this.bucketName,
    required this.bucketOwner,
    this.outputFormat,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    map['bucketOwner'] = bucketOwner;
    final outputFormatValue = outputFormat;
    if (outputFormatValue != null) {
      map['outputFormat'] = outputFormatValue;
    }
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    return map;
  }

  factory PipeLogConfigurationS3LogDestination.fromMap(
      Map<String, dynamic> map) {
    return PipeLogConfigurationS3LogDestination(
      bucketName: map['bucketName'] as String,
      bucketOwner: map['bucketOwner'] as String,
      outputFormat:
          map['outputFormat'] == null ? null : map['outputFormat'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}
