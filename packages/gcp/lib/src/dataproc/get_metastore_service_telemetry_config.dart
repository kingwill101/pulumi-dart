// ignore_for_file: unused_element, unnecessary_cast

class GetMetastoreServiceTelemetryConfig {
  /// The output format of the Dataproc Metastore service's logs. Default value: "JSON" Possible values: ["LEGACY", "JSON"]
  final String logFormat;

  /// Creates a new [GetMetastoreServiceTelemetryConfig].
  /// [logFormat] The output format of the Dataproc Metastore service's logs. Default value: "JSON" Possible values: ["LEGACY", "JSON"]
  GetMetastoreServiceTelemetryConfig({required this.logFormat});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'logFormat': logFormat};
  }

  factory GetMetastoreServiceTelemetryConfig.fromMap(Map<String, dynamic> map) {
    return GetMetastoreServiceTelemetryConfig(
      logFormat: map['logFormat'] as String,
    );
  }
}
