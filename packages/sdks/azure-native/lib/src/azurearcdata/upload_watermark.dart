// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties on upload watermark.  Mostly timestamp for each upload data type
class UploadWatermark {
  /// Last uploaded date for logs from kubernetes cluster. Defaults to current date time
  final pulumi.Input<String>? logs;
  /// Last uploaded date for metrics from kubernetes cluster. Defaults to current date time
  final pulumi.Input<String>? metrics;
  /// Last uploaded date for usages from kubernetes cluster. Defaults to current date time
  final pulumi.Input<String>? usages;

  /// Creates a new [UploadWatermark].
  /// [logs] Last uploaded date for logs from kubernetes cluster. Defaults to current date time
  /// [metrics] Last uploaded date for metrics from kubernetes cluster. Defaults to current date time
  /// [usages] Last uploaded date for usages from kubernetes cluster. Defaults to current date time
  UploadWatermark({
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

  factory UploadWatermark.fromMap(Map<String, dynamic> map) {
    return UploadWatermark(
      logs: map['logs'] == null ? null : (map['logs'] as String).input(),
      metrics: map['metrics'] == null ? null : (map['metrics'] as String).input(),
      usages: map['usages'] == null ? null : (map['usages'] as String).input(),
    );
  }
}

