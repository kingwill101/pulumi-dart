// ignore_for_file: unused_element, unnecessary_cast

/// Telemetry Configuration for the Dataproc Metastore service.
class TelemetryConfigResponse2 {
  /// The output format of the Dataproc Metastore service's logs.
  final String logFormat;

  TelemetryConfigResponse2({
    required this.logFormat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logFormat'] = logFormat;
    return map;
  }

  factory TelemetryConfigResponse2.fromMap(Map<String, dynamic> map) {
    return TelemetryConfigResponse2(
      logFormat: map['logFormat'] as String,
    );
  }
}
