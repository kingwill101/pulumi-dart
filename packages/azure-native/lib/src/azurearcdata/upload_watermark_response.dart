// ignore_for_file: unused_element, unnecessary_cast


/// Properties on upload watermark.  Mostly timestamp for each upload data type
class UploadWatermarkResponse {
  /// Last uploaded date for logs from kubernetes cluster. Defaults to current date time
  final String? logs;
  /// Last uploaded date for metrics from kubernetes cluster. Defaults to current date time
  final String? metrics;
  /// Last uploaded date for usages from kubernetes cluster. Defaults to current date time
  final String? usages;

  /// Creates a new [UploadWatermarkResponse].
  /// [logs] Last uploaded date for logs from kubernetes cluster. Defaults to current date time
  /// [metrics] Last uploaded date for metrics from kubernetes cluster. Defaults to current date time
  /// [usages] Last uploaded date for usages from kubernetes cluster. Defaults to current date time
  UploadWatermarkResponse({
    this.logs,
    this.metrics,
    this.usages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logs': ?logs,
      'metrics': ?metrics,
      'usages': ?usages,
    };
  }

  factory UploadWatermarkResponse.fromMap(Map<String, dynamic> map) {
    return UploadWatermarkResponse(
      logs: map['logs'] == null ? null : map['logs'] as String,
      metrics: map['metrics'] == null ? null : map['metrics'] as String,
      usages: map['usages'] == null ? null : map['usages'] as String,
    );
  }
}

