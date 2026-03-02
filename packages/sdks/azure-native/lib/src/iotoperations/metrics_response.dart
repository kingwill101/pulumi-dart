// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Diagnostic Metrics properties
class MetricsResponse {
  /// The prometheus port to expose the metrics.
  final pulumi.Input<int>? prometheusPort;

  /// Creates a new [MetricsResponse].
  /// [prometheusPort] The prometheus port to expose the metrics.
  MetricsResponse({
    this.prometheusPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prometheusPort': ?prometheusPort,
    };
  }

  factory MetricsResponse.fromMap(Map<String, dynamic> map) {
    return MetricsResponse(
      prometheusPort: map['prometheusPort'] == null ? null : (map['prometheusPort']! as int).input(),
    );
  }
}

