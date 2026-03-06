// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogDeliveryS3DeliveryConfiguration {
  /// This parameter causes the S3 objects that contain delivered logs to use a prefix structure that allows for integration with Apache Hive.
  final pulumi.Input<bool> enableHiveCompatiblePath;
  /// This string allows re-configuring the S3 object prefix to contain either static or variable sections. The valid variables to use in the suffix path will vary by each log source. **Note:** AWS automatically prepends account and service-specific prefixes (e.g., `AWSLogs/{account-id}/CloudFront/` for CloudFront sources) to the configured value. Specify only your custom suffix path without these AWS-managed prefixes.
  final pulumi.Input<String> suffixPath;

  /// Creates a new [LogDeliveryS3DeliveryConfiguration].
  /// [enableHiveCompatiblePath] This parameter causes the S3 objects that contain delivered logs to use a prefix structure that allows for integration with Apache Hive.
  /// [suffixPath] This string allows re-configuring the S3 object prefix to contain either static or variable sections. The valid variables to use in the suffix path will vary by each log source. **Note:** AWS automatically prepends account and service-specific prefixes (e.g., `AWSLogs/{account-id}/CloudFront/` for CloudFront sources) to the configured value. Specify only your custom suffix path without these AWS-managed prefixes.
  const LogDeliveryS3DeliveryConfiguration({
    required this.enableHiveCompatiblePath,
    required this.suffixPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableHiveCompatiblePath': enableHiveCompatiblePath,
      'suffixPath': suffixPath,
    };
  }

  factory LogDeliveryS3DeliveryConfiguration.fromMap(Map<String, dynamic> map) {
    return LogDeliveryS3DeliveryConfiguration(
      enableHiveCompatiblePath: pulumi.Input.fromValue(map['enableHiveCompatiblePath'] as bool),
      suffixPath: pulumi.Input.fromValue(map['suffixPath'] as String),
    );
  }
}

