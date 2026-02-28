// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for resources used by Airflow web server.
class WebServerResourceComposerV1beta1 {
  /// Optional. CPU request and limit for Airflow web server.
  final double? cpu;
  /// Optional. Memory (GB) request and limit for Airflow web server.
  final double? memoryGb;
  /// Optional. Storage (GB) request and limit for Airflow web server.
  final double? storageGb;

  /// Creates a new [WebServerResourceComposerV1beta1].
  /// [cpu] Optional. CPU request and limit for Airflow web server.
  /// [memoryGb] Optional. Memory (GB) request and limit for Airflow web server.
  /// [storageGb] Optional. Storage (GB) request and limit for Airflow web server.
  WebServerResourceComposerV1beta1({
    this.cpu,
    this.memoryGb,
    this.storageGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'memoryGb': ?memoryGb,
      'storageGb': ?storageGb,
    };
  }

  factory WebServerResourceComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return WebServerResourceComposerV1beta1(
      cpu: map['cpu'] == null ? null : map['cpu'] as double,
      memoryGb: map['memoryGb'] == null ? null : map['memoryGb'] as double,
      storageGb: map['storageGb'] == null ? null : map['storageGb'] as double,
    );
  }
}

