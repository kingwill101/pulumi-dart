// ignore_for_file: unused_element, unnecessary_cast


class ExperimentTemplateLogConfigurationS3Configuration {
  /// The name of the destination bucket.
  final String bucketName;
  /// The bucket prefix.
  final String? prefix;

  /// Creates a new [ExperimentTemplateLogConfigurationS3Configuration].
  /// [bucketName] The name of the destination bucket.
  /// [prefix] The bucket prefix.
  ExperimentTemplateLogConfigurationS3Configuration({
    required this.bucketName,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'prefix': ?prefix,
    };
  }

  factory ExperimentTemplateLogConfigurationS3Configuration.fromMap(Map<String, dynamic> map) {
    return ExperimentTemplateLogConfigurationS3Configuration(
      bucketName: map['bucketName'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}

