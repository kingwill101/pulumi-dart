// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties on upload watermark.  Mostly timestamp for each upload data type
class UploadWatermarkResponse {
  /// Last uploaded date for logs from kubernetes cluster. Defaults to current date time
  final pulumi.Input<String?>? logs;
  /// Last uploaded date for metrics from kubernetes cluster. Defaults to current date time
  final pulumi.Input<String?>? metrics;
  /// Last uploaded date for usages from kubernetes cluster. Defaults to current date time
  final pulumi.Input<String?>? usages;

  /// Creates a new [UploadWatermarkResponse].
  /// [logs] Last uploaded date for logs from kubernetes cluster. Defaults to current date time
  /// [metrics] Last uploaded date for metrics from kubernetes cluster. Defaults to current date time
  /// [usages] Last uploaded date for usages from kubernetes cluster. Defaults to current date time
  const UploadWatermarkResponse({
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
      logs: (() { final guardedValue = map['logs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usages: (() { final guardedValue = map['usages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
