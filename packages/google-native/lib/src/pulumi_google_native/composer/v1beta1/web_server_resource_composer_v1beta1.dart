// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for resources used by Airflow web server.
class WebServerResourceComposerV1beta1 {
  /// Optional. CPU request and limit for Airflow web server.
  final double? cpu;

  /// Optional. Memory (GB) request and limit for Airflow web server.
  final double? memoryGb;

  /// Optional. Storage (GB) request and limit for Airflow web server.
  final double? storageGb;

  WebServerResourceComposerV1beta1({
    this.cpu,
    this.memoryGb,
    this.storageGb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cpuValue = cpu;
    if (cpuValue != null) {
      map['cpu'] = cpuValue;
    }
    final memoryGbValue = memoryGb;
    if (memoryGbValue != null) {
      map['memoryGb'] = memoryGbValue;
    }
    final storageGbValue = storageGb;
    if (storageGbValue != null) {
      map['storageGb'] = storageGbValue;
    }
    return map;
  }

  factory WebServerResourceComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return WebServerResourceComposerV1beta1(
      cpu: map['cpu'] == null ? null : map['cpu'] as double,
      memoryGb: map['memoryGb'] == null ? null : map['memoryGb'] as double,
      storageGb: map['storageGb'] == null ? null : map['storageGb'] as double,
    );
  }
}
