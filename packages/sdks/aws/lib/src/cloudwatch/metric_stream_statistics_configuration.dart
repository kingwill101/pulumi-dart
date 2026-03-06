// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_stream_statistics_configuration_include_metric.dart';

class MetricStreamStatisticsConfiguration {
  /// The additional statistics to stream for the metrics listed in `include_metrics`.
  final pulumi.Input<List<String>> additionalStatistics;
  /// An array that defines the metrics that are to have additional statistics streamed. See details below.
  final pulumi.Input<List<MetricStreamStatisticsConfigurationIncludeMetric>> includeMetrics;

  /// Creates a new [MetricStreamStatisticsConfiguration].
  /// [additionalStatistics] The additional statistics to stream for the metrics listed in `include_metrics`.
  /// [includeMetrics] An array that defines the metrics that are to have additional statistics streamed. See details below.
  const MetricStreamStatisticsConfiguration({
    required this.additionalStatistics,
    required this.includeMetrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalStatistics': additionalStatistics,
      'includeMetrics': pulumi.Input.mapInputValue<List<MetricStreamStatisticsConfigurationIncludeMetric>, List<Map<String, dynamic>>>(includeMetrics, (value) => pulumi.Input.encodeList<MetricStreamStatisticsConfigurationIncludeMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MetricStreamStatisticsConfiguration.fromMap(Map<String, dynamic> map) {
    return MetricStreamStatisticsConfiguration(
      additionalStatistics: pulumi.Input.fromValue((map['additionalStatistics'] as List).cast<String>()),
      includeMetrics: pulumi.Input.fromValue(pulumi.Input.decodeList<MetricStreamStatisticsConfigurationIncludeMetric>(map['includeMetrics']!, (value) => MetricStreamStatisticsConfigurationIncludeMetric.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

