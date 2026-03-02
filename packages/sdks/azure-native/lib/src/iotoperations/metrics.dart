// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Diagnostic Metrics properties
class Metrics {
  /// The prometheus port to expose the metrics.
  final pulumi.Input<int>? prometheusPort;

  /// Creates a new [Metrics].
  /// [prometheusPort] The prometheus port to expose the metrics.
  Metrics({
    this.prometheusPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prometheusPort': ?prometheusPort,
    };
  }

  factory Metrics.fromMap(Map<String, dynamic> map) {
    return Metrics(
      prometheusPort: map['prometheusPort'] == null ? null : (map['prometheusPort'] as int).input(),
    );
  }
}

