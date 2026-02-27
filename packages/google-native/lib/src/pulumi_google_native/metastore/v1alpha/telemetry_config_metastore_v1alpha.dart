// ignore_for_file: unused_element, unnecessary_cast

import 'telemetry_config_log_format_metastore_v1alpha.dart';

/// Telemetry Configuration for the Dataproc Metastore service.
class TelemetryConfigMetastoreV1alpha {
  /// The output format of the Dataproc Metastore service's logs.
  final TelemetryConfigLogFormatMetastoreV1alpha? logFormat;

  TelemetryConfigMetastoreV1alpha({
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

  factory TelemetryConfigMetastoreV1alpha.fromMap(Map<String, dynamic> map) {
    return TelemetryConfigMetastoreV1alpha(
      logFormat: map['logFormat'] == null
          ? null
          : TelemetryConfigLogFormatMetastoreV1alpha.fromValue(
              map['logFormat'] as String),
    );
  }
}
