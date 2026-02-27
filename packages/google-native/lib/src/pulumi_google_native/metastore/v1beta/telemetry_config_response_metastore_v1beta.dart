// ignore_for_file: unused_element, unnecessary_cast

/// Telemetry Configuration for the Dataproc Metastore service.
class TelemetryConfigResponseMetastoreV1beta {
  /// The output format of the Dataproc Metastore service's logs.
  final String logFormat;

  TelemetryConfigResponseMetastoreV1beta({
    required this.logFormat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logFormat'] = logFormat;
    return map;
  }

  factory TelemetryConfigResponseMetastoreV1beta.fromMap(
      Map<String, dynamic> map) {
    return TelemetryConfigResponseMetastoreV1beta(
      logFormat: map['logFormat'] as String,
    );
  }
}
