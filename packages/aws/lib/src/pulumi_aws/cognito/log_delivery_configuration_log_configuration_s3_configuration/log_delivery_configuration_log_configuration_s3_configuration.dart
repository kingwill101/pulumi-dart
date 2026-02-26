// ignore_for_file: unused_element, unnecessary_cast

class LogDeliveryConfigurationLogConfigurationS3Configuration {
  /// The ARN of the S3 bucket to which the logs should be delivered.
  final String? bucketArn;

  LogDeliveryConfigurationLogConfigurationS3Configuration({
    this.bucketArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketArnValue = bucketArn;
    if (bucketArnValue != null) {
      map['bucketArn'] = bucketArnValue;
    }
    return map;
  }

  factory LogDeliveryConfigurationLogConfigurationS3Configuration.fromMap(
      Map<String, dynamic> map) {
    return LogDeliveryConfigurationLogConfigurationS3Configuration(
      bucketArn: map['bucketArn'] == null ? null : map['bucketArn'] as String,
    );
  }
}
