// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'metric_response.dart';

/// Dataproc metric config.
class DataprocMetricConfigResponse {
  /// Metrics sources to enable.
  final List<MetricResponse> metrics;

  DataprocMetricConfigResponse({
    required this.metrics,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metrics'] = Input.encodeList<MetricResponse, Map<String, dynamic>>(
        metrics, (value) => value.toMap());
    return map;
  }

  factory DataprocMetricConfigResponse.fromMap(Map<String, dynamic> map) {
    return DataprocMetricConfigResponse(
      metrics: Input.decodeList<MetricResponse>(
          map['metrics'],
          (value) =>
              MetricResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
