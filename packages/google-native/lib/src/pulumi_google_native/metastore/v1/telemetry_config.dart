// ignore_for_file: unused_element, unnecessary_cast

import 'telemetry_config_log_format.dart';

/// Telemetry Configuration for the Dataproc Metastore service.
class TelemetryConfig {
  /// The output format of the Dataproc Metastore service's logs.
  final TelemetryConfigLogFormat? logFormat;

  TelemetryConfig({
    this.logFormat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final logFormatValue = logFormat;
    if (logFormatValue != null) {
      map['logFormat'] = logFormatValue.value;
    }
    return map;
  }

  factory TelemetryConfig.fromMap(Map<String, dynamic> map) {
    return TelemetryConfig(
      logFormat: map['logFormat'] == null
          ? null
          : TelemetryConfigLogFormat.fromValue(map['logFormat'] as String),
    );
  }
}
