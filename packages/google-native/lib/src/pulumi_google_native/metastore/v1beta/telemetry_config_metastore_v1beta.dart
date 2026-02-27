// ignore_for_file: unused_element, unnecessary_cast

import 'telemetry_config_log_format_metastore_v1beta.dart';

/// Telemetry Configuration for the Dataproc Metastore service.
class TelemetryConfigMetastoreV1beta {
  /// The output format of the Dataproc Metastore service's logs.
  final TelemetryConfigLogFormatMetastoreV1beta? logFormat;

  TelemetryConfigMetastoreV1beta({
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

  factory TelemetryConfigMetastoreV1beta.fromMap(Map<String, dynamic> map) {
    return TelemetryConfigMetastoreV1beta(
      logFormat: map['logFormat'] == null
          ? null
          : TelemetryConfigLogFormatMetastoreV1beta.fromValue(
              map['logFormat'] as String),
    );
  }
}
