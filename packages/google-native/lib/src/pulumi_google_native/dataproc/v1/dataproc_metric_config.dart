// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'metric.dart';

/// Dataproc metric config.
class DataprocMetricConfig {
  /// Metrics sources to enable.
  final List<Metric> metrics;

  DataprocMetricConfig({
    required this.metrics,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metrics'] = Input.encodeList<Metric, Map<String, dynamic>>(
        metrics, (value) => value.toMap());
    return map;
  }

  factory DataprocMetricConfig.fromMap(Map<String, dynamic> map) {
    return DataprocMetricConfig(
      metrics: Input.decodeList<Metric>(map['metrics'],
          (value) => Metric.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
