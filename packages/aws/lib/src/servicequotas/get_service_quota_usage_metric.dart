// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_quota_usage_metric_metric_dimension.dart';

class GetServiceQuotaUsageMetric {
  /// The metric dimensions.
  final List<GetServiceQuotaUsageMetricMetricDimension> metricDimensions;

  /// The name of the metric.
  final String metricName;

  /// The namespace of the metric.
  final String metricNamespace;

  /// The metric statistic that AWS recommend you use when determining quota usage.
  final String metricStatisticRecommendation;

  /// Creates a new [GetServiceQuotaUsageMetric].
  /// [metricDimensions] The metric dimensions.
  /// [metricName] The name of the metric.
  /// [metricNamespace] The namespace of the metric.
  /// [metricStatisticRecommendation] The metric statistic that AWS recommend you use when determining quota usage.
  GetServiceQuotaUsageMetric({
    required this.metricDimensions,
    required this.metricName,
    required this.metricNamespace,
    required this.metricStatisticRecommendation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricDimensions':
          pulumi.Input.encodeList<
            GetServiceQuotaUsageMetricMetricDimension,
            Map<String, dynamic>
          >(metricDimensions, (value) => value.toMap()),
      'metricName': metricName,
      'metricNamespace': metricNamespace,
      'metricStatisticRecommendation': metricStatisticRecommendation,
    };
  }

  factory GetServiceQuotaUsageMetric.fromMap(Map<String, dynamic> map) {
    return GetServiceQuotaUsageMetric(
      metricDimensions:
          pulumi.Input.decodeList<GetServiceQuotaUsageMetricMetricDimension>(
            map['metricDimensions'],
            (value) => GetServiceQuotaUsageMetricMetricDimension.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      metricName: map['metricName'] as String,
      metricNamespace: map['metricNamespace'] as String,
      metricStatisticRecommendation:
          map['metricStatisticRecommendation'] as String,
    );
  }
}
