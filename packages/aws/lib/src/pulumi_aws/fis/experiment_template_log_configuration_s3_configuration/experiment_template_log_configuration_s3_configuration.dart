// ignore_for_file: unused_element, unnecessary_cast

class ExperimentTemplateLogConfigurationS3Configuration {
  /// The name of the destination bucket.
  final String bucketName;

  /// The bucket prefix.
  final String? prefix;

  ExperimentTemplateLogConfigurationS3Configuration({
    required this.bucketName,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    return map;
  }

  factory ExperimentTemplateLogConfigurationS3Configuration.fromMap(
      Map<String, dynamic> map) {
    return ExperimentTemplateLogConfigurationS3Configuration(
      bucketName: map['bucketName'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}
