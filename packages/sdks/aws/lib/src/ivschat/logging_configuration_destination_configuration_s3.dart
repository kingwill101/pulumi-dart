// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoggingConfigurationDestinationConfigurationS3 {
  /// Name of the Amazon S3 bucket where chat activity will be logged.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> bucketName;

  /// Creates a new [LoggingConfigurationDestinationConfigurationS3].
  /// [bucketName] Name of the Amazon S3 bucket where chat activity will be logged.
  LoggingConfigurationDestinationConfigurationS3({required this.bucketName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bucketName': bucketName};
  }

  factory LoggingConfigurationDestinationConfigurationS3.fromMap(
    Map<String, dynamic> map,
  ) {
    return LoggingConfigurationDestinationConfigurationS3(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
    );
  }
}
