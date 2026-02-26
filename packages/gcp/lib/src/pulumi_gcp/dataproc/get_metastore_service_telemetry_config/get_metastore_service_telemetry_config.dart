// ignore_for_file: unused_element, unnecessary_cast

class GetMetastoreServiceTelemetryConfig {
  /// The output format of the Dataproc Metastore service's logs. Default value: "JSON" Possible values: ["LEGACY", "JSON"]
  final String logFormat;

  GetMetastoreServiceTelemetryConfig({
    required this.logFormat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logFormat'] = logFormat;
    return map;
  }

  factory GetMetastoreServiceTelemetryConfig.fromMap(Map<String, dynamic> map) {
    return GetMetastoreServiceTelemetryConfig(
      logFormat: map['logFormat'] as String,
    );
  }
}
