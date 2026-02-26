// ignore_for_file: unused_element, unnecessary_cast

import 'telemetry_config_log_format3.dart';

/// Telemetry Configuration for the Dataproc Metastore service.
class TelemetryConfig3 {
  /// The output format of the Dataproc Metastore service's logs.
  final TelemetryConfigLogFormat3? logFormat;

  TelemetryConfig3({
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

  factory TelemetryConfig3.fromMap(Map<String, dynamic> map) {
    return TelemetryConfig3(
      logFormat: map['logFormat'] == null
          ? null
          : TelemetryConfigLogFormat3.fromValue(map['logFormat'] as String),
    );
  }
}
