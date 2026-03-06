// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSourceMappingMetricsConfig {
  /// List containing the metrics to be produced by the event source mapping. Valid values: `EventCount`.
  final pulumi.Input<List<String>> metrics;

  /// Creates a new [EventSourceMappingMetricsConfig].
  /// [metrics] List containing the metrics to be produced by the event source mapping. Valid values: `EventCount`.
  const EventSourceMappingMetricsConfig({
    required this.metrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metrics': metrics,
    };
  }

  factory EventSourceMappingMetricsConfig.fromMap(Map<String, dynamic> map) {
    return EventSourceMappingMetricsConfig(
      metrics: pulumi.Input.fromValue((map['metrics'] as List).cast<String>()),
    );
  }
}

