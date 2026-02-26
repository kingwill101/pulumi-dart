// ignore_for_file: unused_element, unnecessary_cast

/// Telemetry Configuration for the Dataproc Metastore service.
class TelemetryConfigResponse3 {
  /// The output format of the Dataproc Metastore service's logs.
  final String logFormat;

  TelemetryConfigResponse3({
    required this.logFormat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logFormat'] = logFormat;
    return map;
  }

  factory TelemetryConfigResponse3.fromMap(Map<String, dynamic> map) {
    return TelemetryConfigResponse3(
      logFormat: map['logFormat'] as String,
    );
  }
}
