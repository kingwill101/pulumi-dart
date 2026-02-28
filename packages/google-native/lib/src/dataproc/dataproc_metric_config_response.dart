// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_response.dart';

/// Dataproc metric config.
class DataprocMetricConfigResponse {
  /// Metrics sources to enable.
  final List<MetricResponse> metrics;

  /// Creates a new [DataprocMetricConfigResponse].
  /// [metrics] Metrics sources to enable.
  DataprocMetricConfigResponse({
    required this.metrics,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metrics'] =
        pulumi.Input.encodeList<MetricResponse, Map<String, dynamic>>(
            metrics, (value) => value.toMap());
    return map;
  }

  factory DataprocMetricConfigResponse.fromMap(Map<String, dynamic> map) {
    return DataprocMetricConfigResponse(
      metrics: pulumi.Input.decodeList<MetricResponse>(
          map['metrics'],
          (value) =>
              MetricResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
