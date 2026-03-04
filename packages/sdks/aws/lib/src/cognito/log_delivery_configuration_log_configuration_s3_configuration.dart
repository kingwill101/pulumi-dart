// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogDeliveryConfigurationLogConfigurationS3Configuration {
  /// The ARN of the S3 bucket to which the logs should be delivered.
  final pulumi.Input<String>? bucketArn;

  /// Creates a new [LogDeliveryConfigurationLogConfigurationS3Configuration].
  /// [bucketArn] The ARN of the S3 bucket to which the logs should be delivered.
  LogDeliveryConfigurationLogConfigurationS3Configuration({this.bucketArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bucketArn': ?bucketArn};
  }

  factory LogDeliveryConfigurationLogConfigurationS3Configuration.fromMap(
    Map<String, dynamic> map,
  ) {
    return LogDeliveryConfigurationLogConfigurationS3Configuration(
      bucketArn: (() {
        final guardedValue = map['bucketArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
