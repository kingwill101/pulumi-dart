// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../metric_stream_statistics_configuration_include_metric/metric_stream_statistics_configuration_include_metric.dart';

class MetricStreamStatisticsConfiguration {
  /// The additional statistics to stream for the metrics listed in <span pulumi-lang-nodejs="`includeMetrics`" pulumi-lang-dotnet="`IncludeMetrics`" pulumi-lang-go="`includeMetrics`" pulumi-lang-python="`include_metrics`" pulumi-lang-yaml="`includeMetrics`" pulumi-lang-java="`includeMetrics`">`include_metrics`</span>.
  final List<String> additionalStatistics;

  /// An array that defines the metrics that are to have additional statistics streamed. See details below.
  final List<MetricStreamStatisticsConfigurationIncludeMetric> includeMetrics;

  MetricStreamStatisticsConfiguration({
    required this.additionalStatistics,
    required this.includeMetrics,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalStatistics'] = additionalStatistics;
    map['includeMetrics'] = Input.encodeList<
        MetricStreamStatisticsConfigurationIncludeMetric,
        Map<String, dynamic>>(includeMetrics, (value) => value.toMap());
    return map;
  }

  factory MetricStreamStatisticsConfiguration.fromMap(
      Map<String, dynamic> map) {
    return MetricStreamStatisticsConfiguration(
      additionalStatistics:
          (map['additionalStatistics'] as List).cast<String>(),
      includeMetrics:
          Input.decodeList<MetricStreamStatisticsConfigurationIncludeMetric>(
              map['includeMetrics'],
              (value) =>
                  MetricStreamStatisticsConfigurationIncludeMetric.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
