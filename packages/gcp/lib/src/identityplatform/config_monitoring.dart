// ignore_for_file: unused_element, unnecessary_cast

import 'config_monitoring_request_logging.dart';

class ConfigMonitoring {
  /// Configuration for logging requests made to this project to Stackdriver Logging
  /// Structure is documented below.
  final ConfigMonitoringRequestLogging? requestLogging;

  /// Creates a new [ConfigMonitoring].
  /// [requestLogging] Configuration for logging requests made to this project to Stackdriver Logging
  ConfigMonitoring({this.requestLogging});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestLogging': ?requestLogging == null
          ? null
          : requestLogging!.toMap(),
    };
  }

  factory ConfigMonitoring.fromMap(Map<String, dynamic> map) {
    return ConfigMonitoring(
      requestLogging: map['requestLogging'] == null
          ? null
          : ConfigMonitoringRequestLogging.fromMap(
              (map['requestLogging'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
