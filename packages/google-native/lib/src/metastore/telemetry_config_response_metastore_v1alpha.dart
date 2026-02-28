// ignore_for_file: unused_element, unnecessary_cast

/// Telemetry Configuration for the Dataproc Metastore service.
class TelemetryConfigResponseMetastoreV1alpha {
  /// The output format of the Dataproc Metastore service's logs.
  final String logFormat;

  /// Creates a new [TelemetryConfigResponseMetastoreV1alpha].
  /// [logFormat] The output format of the Dataproc Metastore service's logs.
  TelemetryConfigResponseMetastoreV1alpha({
    required this.logFormat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logFormat'] = logFormat;
    return map;
  }

  factory TelemetryConfigResponseMetastoreV1alpha.fromMap(
      Map<String, dynamic> map) {
    return TelemetryConfigResponseMetastoreV1alpha(
      logFormat: map['logFormat'] as String,
    );
  }
}
