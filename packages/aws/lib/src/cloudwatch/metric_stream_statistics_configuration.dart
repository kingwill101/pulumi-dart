// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_stream_statistics_configuration_include_metric.dart';

class MetricStreamStatisticsConfiguration {
  /// The additional statistics to stream for the metrics listed in `include_metrics`.
  final List<String> additionalStatistics;

  /// An array that defines the metrics that are to have additional statistics streamed. See details below.
  final List<MetricStreamStatisticsConfigurationIncludeMetric> includeMetrics;

  /// Creates a new [MetricStreamStatisticsConfiguration].
  /// [additionalStatistics] The additional statistics to stream for the metrics listed in `include_metrics`.
  /// [includeMetrics] An array that defines the metrics that are to have additional statistics streamed. See details below.
  MetricStreamStatisticsConfiguration({
    required this.additionalStatistics,
    required this.includeMetrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalStatistics': additionalStatistics,
      'includeMetrics':
          pulumi.Input.encodeList<
            MetricStreamStatisticsConfigurationIncludeMetric,
            Map<String, dynamic>
          >(includeMetrics, (value) => value.toMap()),
    };
  }

  factory MetricStreamStatisticsConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return MetricStreamStatisticsConfiguration(
      additionalStatistics: (map['additionalStatistics'] as List)
          .cast<String>(),
      includeMetrics:
          pulumi.Input.decodeList<
            MetricStreamStatisticsConfigurationIncludeMetric
          >(
            map['includeMetrics'],
            (value) => MetricStreamStatisticsConfigurationIncludeMetric.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
