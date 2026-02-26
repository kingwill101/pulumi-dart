// ignore_for_file: unused_element, unnecessary_cast

import '../internet_monitor_internet_measurements_log_delivery_s3_config/internet_monitor_internet_measurements_log_delivery_s3_config.dart';

class InternetMonitorInternetMeasurementsLogDelivery {
  final InternetMonitorInternetMeasurementsLogDeliveryS3Config? s3Config;

  InternetMonitorInternetMeasurementsLogDelivery({
    this.s3Config,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final s3ConfigValue = s3Config;
    if (s3ConfigValue != null) {
      map['s3Config'] = s3ConfigValue.toMap();
    }
    return map;
  }

  factory InternetMonitorInternetMeasurementsLogDelivery.fromMap(
      Map<String, dynamic> map) {
    return InternetMonitorInternetMeasurementsLogDelivery(
      s3Config: map['s3Config'] == null
          ? null
          : InternetMonitorInternetMeasurementsLogDeliveryS3Config.fromMap(
              (map['s3Config'] as Map).cast<String, dynamic>()),
    );
  }
}
