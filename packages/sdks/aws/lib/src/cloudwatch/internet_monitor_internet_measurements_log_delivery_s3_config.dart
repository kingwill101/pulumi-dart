// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InternetMonitorInternetMeasurementsLogDeliveryS3Config {
  final pulumi.Input<String> bucketName;
  final pulumi.Input<String>? bucketPrefix;
  final pulumi.Input<String>? logDeliveryStatus;

  /// Creates a new [InternetMonitorInternetMeasurementsLogDeliveryS3Config].
  /// [bucketName] Required.
  /// [bucketPrefix] Optional.
  /// [logDeliveryStatus] Optional.
  InternetMonitorInternetMeasurementsLogDeliveryS3Config({
    required this.bucketName,
    this.bucketPrefix,
    this.logDeliveryStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'bucketPrefix': ?bucketPrefix,
      'logDeliveryStatus': ?logDeliveryStatus,
    };
  }

  factory InternetMonitorInternetMeasurementsLogDeliveryS3Config.fromMap(Map<String, dynamic> map) {
    return InternetMonitorInternetMeasurementsLogDeliveryS3Config(
      bucketName: (map['bucketName'] as String).input(),
      bucketPrefix: map['bucketPrefix'] == null ? null : (map['bucketPrefix'] as String).input(),
      logDeliveryStatus: map['logDeliveryStatus'] == null ? null : (map['logDeliveryStatus'] as String).input(),
    );
  }
}

