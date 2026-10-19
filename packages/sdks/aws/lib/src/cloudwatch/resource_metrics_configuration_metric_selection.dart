// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceMetricsConfigurationMetricSelection {
  /// Set of metric names to collect for the resource. CloudWatch collects only the metrics listed here. Between 1 and 500 names, each between 1 and 255 characters. For the OpenTelemetry metrics published by ElastiCache, see [OpenTelemetry metrics](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/otel-metrics.html).
  final pulumi.Input<List<String>> includeMetrics;

  /// Creates a new [ResourceMetricsConfigurationMetricSelection].
  /// [includeMetrics] Set of metric names to collect for the resource. CloudWatch collects only the metrics listed here. Between 1 and 500 names, each between 1 and 255 characters. For the OpenTelemetry metrics published by ElastiCache, see [OpenTelemetry metrics](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/otel-metrics.html).
  const ResourceMetricsConfigurationMetricSelection({
    required this.includeMetrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeMetrics': includeMetrics,
    };
  }

  factory ResourceMetricsConfigurationMetricSelection.fromMap(Map<String, dynamic> map) {
    return ResourceMetricsConfigurationMetricSelection(
      includeMetrics: pulumi.Input.fromValue((map['includeMetrics'] as List).cast<String>()),
    );
  }
}
