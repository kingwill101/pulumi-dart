// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'internet_monitor_internet_measurements_log_delivery_s3_config.dart';

class InternetMonitorInternetMeasurementsLogDelivery {
  final pulumi.Input<InternetMonitorInternetMeasurementsLogDeliveryS3Config>? s3Config;

  /// Creates a new [InternetMonitorInternetMeasurementsLogDelivery].
  /// [s3Config] Optional.
  const InternetMonitorInternetMeasurementsLogDelivery({
    this.s3Config,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Config': ?pulumi.Input.mapOptionalInputValue<InternetMonitorInternetMeasurementsLogDeliveryS3Config, Map<String, dynamic>>(s3Config, (value) => value.toMap()),
    };
  }

  factory InternetMonitorInternetMeasurementsLogDelivery.fromMap(Map<String, dynamic> map) {
    return InternetMonitorInternetMeasurementsLogDelivery(
      s3Config: (() { final guardedValue = map['s3Config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InternetMonitorInternetMeasurementsLogDeliveryS3Config.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

