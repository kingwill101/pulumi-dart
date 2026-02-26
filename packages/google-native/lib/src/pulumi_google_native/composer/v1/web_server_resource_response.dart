// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for resources used by Airflow web server.
class WebServerResourceResponse {
  /// Optional. CPU request and limit for Airflow web server.
  final double cpu;

  /// Optional. Memory (GB) request and limit for Airflow web server.
  final double memoryGb;

  /// Optional. Storage (GB) request and limit for Airflow web server.
  final double storageGb;

  WebServerResourceResponse({
    required this.cpu,
    required this.memoryGb,
    required this.storageGb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpu'] = cpu;
    map['memoryGb'] = memoryGb;
    map['storageGb'] = storageGb;
    return map;
  }

  factory WebServerResourceResponse.fromMap(Map<String, dynamic> map) {
    return WebServerResourceResponse(
      cpu: map['cpu'] as double,
      memoryGb: map['memoryGb'] as double,
      storageGb: map['storageGb'] as double,
    );
  }
}
