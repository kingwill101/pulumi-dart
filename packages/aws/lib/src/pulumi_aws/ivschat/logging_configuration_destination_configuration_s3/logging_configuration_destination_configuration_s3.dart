// ignore_for_file: unused_element, unnecessary_cast

class LoggingConfigurationDestinationConfigurationS3 {
  /// Name of the Amazon S3 bucket where chat activity will be logged.
  ///
  /// The following arguments are optional:
  final String bucketName;

  LoggingConfigurationDestinationConfigurationS3({
    required this.bucketName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    return map;
  }

  factory LoggingConfigurationDestinationConfigurationS3.fromMap(
      Map<String, dynamic> map) {
    return LoggingConfigurationDestinationConfigurationS3(
      bucketName: map['bucketName'] as String,
    );
  }
}
