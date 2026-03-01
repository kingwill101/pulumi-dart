// ignore_for_file: unused_element, unnecessary_cast

class MetastoreServiceTelemetryConfig {
  /// The output format of the Dataproc Metastore service's logs.
  /// Default value is `JSON`.
  /// Possible values are: `LEGACY`, `JSON`.
  final String? logFormat;

  /// Creates a new [MetastoreServiceTelemetryConfig].
  /// [logFormat] The output format of the Dataproc Metastore service's logs.
  MetastoreServiceTelemetryConfig({this.logFormat});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'logFormat': ?logFormat};
  }

  factory MetastoreServiceTelemetryConfig.fromMap(Map<String, dynamic> map) {
    return MetastoreServiceTelemetryConfig(
      logFormat: map['logFormat'] == null ? null : map['logFormat'] as String,
    );
  }
}
