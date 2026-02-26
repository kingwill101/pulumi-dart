// ignore_for_file: unused_element, unnecessary_cast

import 'telemetry_config_log_format2.dart';

/// Telemetry Configuration for the Dataproc Metastore service.
class TelemetryConfig2 {
  /// The output format of the Dataproc Metastore service's logs.
  final TelemetryConfigLogFormat2? logFormat;

  TelemetryConfig2({
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

  factory TelemetryConfig2.fromMap(Map<String, dynamic> map) {
    return TelemetryConfig2(
      logFormat: map['logFormat'] == null
          ? null
          : TelemetryConfigLogFormat2.fromValue(map['logFormat'] as String),
    );
  }
}
