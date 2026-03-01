// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric.dart';

/// Dataproc metric config.
class DataprocMetricConfig {
  /// Metrics sources to enable.
  final List<Metric> metrics;

  /// Creates a new [DataprocMetricConfig].
  /// [metrics] Metrics sources to enable.
  DataprocMetricConfig({required this.metrics});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metrics': pulumi.Input.encodeList<Metric, Map<String, dynamic>>(
        metrics,
        (value) => value.toMap(),
      ),
    };
  }

  factory DataprocMetricConfig.fromMap(Map<String, dynamic> map) {
    return DataprocMetricConfig(
      metrics: pulumi.Input.decodeList<Metric>(
        map['metrics'],
        (value) => Metric.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
