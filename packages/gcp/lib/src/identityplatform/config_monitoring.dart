// ignore_for_file: unused_element, unnecessary_cast

import 'config_monitoring_request_logging.dart';

class ConfigMonitoring {
  /// Configuration for logging requests made to this project to Stackdriver Logging
  /// Structure is documented below.
  final ConfigMonitoringRequestLogging? requestLogging;

  /// Creates a new [ConfigMonitoring].
  /// [requestLogging] Configuration for logging requests made to this project to Stackdriver Logging
  ConfigMonitoring({
    this.requestLogging,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final requestLoggingValue = requestLogging;
    if (requestLoggingValue != null) {
      map['requestLogging'] = requestLoggingValue.toMap();
    }
    return map;
  }

  factory ConfigMonitoring.fromMap(Map<String, dynamic> map) {
    return ConfigMonitoring(
      requestLogging: map['requestLogging'] == null
          ? null
          : ConfigMonitoringRequestLogging.fromMap(
              (map['requestLogging'] as Map).cast<String, dynamic>()),
    );
  }
}
