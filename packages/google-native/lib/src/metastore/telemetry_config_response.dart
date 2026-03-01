// ignore_for_file: unused_element, unnecessary_cast

/// Telemetry Configuration for the Dataproc Metastore service.
class TelemetryConfigResponse {
  /// The output format of the Dataproc Metastore service's logs.
  final String logFormat;

  /// Creates a new [TelemetryConfigResponse].
  /// [logFormat] The output format of the Dataproc Metastore service's logs.
  TelemetryConfigResponse({required this.logFormat});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'logFormat': logFormat};
  }

  factory TelemetryConfigResponse.fromMap(Map<String, dynamic> map) {
    return TelemetryConfigResponse(logFormat: map['logFormat'] as String);
  }
}
