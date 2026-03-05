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
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      bucketPrefix: (() { final guardedValue = map['bucketPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logDeliveryStatus: (() { final guardedValue = map['logDeliveryStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

