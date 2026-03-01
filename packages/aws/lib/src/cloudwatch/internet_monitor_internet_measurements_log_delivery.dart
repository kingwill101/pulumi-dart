// ignore_for_file: unused_element, unnecessary_cast

import 'internet_monitor_internet_measurements_log_delivery_s3_config.dart';

class InternetMonitorInternetMeasurementsLogDelivery {
  final InternetMonitorInternetMeasurementsLogDeliveryS3Config? s3Config;

  /// Creates a new [InternetMonitorInternetMeasurementsLogDelivery].
  /// [s3Config] Optional.
  InternetMonitorInternetMeasurementsLogDelivery({this.s3Config});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Config': ?s3Config == null ? null : s3Config!.toMap(),
    };
  }

  factory InternetMonitorInternetMeasurementsLogDelivery.fromMap(
    Map<String, dynamic> map,
  ) {
    return InternetMonitorInternetMeasurementsLogDelivery(
      s3Config: map['s3Config'] == null
          ? null
          : InternetMonitorInternetMeasurementsLogDeliveryS3Config.fromMap(
              (map['s3Config'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
