// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_quota_usage_metric_metric_dimension.dart';

class ServiceQuotaUsageMetric {
  /// The metric dimensions.
  final pulumi.Input<List<ServiceQuotaUsageMetricMetricDimension>>? metricDimensions;
  /// The name of the metric.
  final pulumi.Input<String>? metricName;
  /// The namespace of the metric.
  final pulumi.Input<String>? metricNamespace;
  /// The metric statistic that AWS recommend you use when determining quota usage.
  final pulumi.Input<String>? metricStatisticRecommendation;

  /// Creates a new [ServiceQuotaUsageMetric].
  /// [metricDimensions] The metric dimensions.
  /// [metricName] The name of the metric.
  /// [metricNamespace] The namespace of the metric.
  /// [metricStatisticRecommendation] The metric statistic that AWS recommend you use when determining quota usage.
  ServiceQuotaUsageMetric({
    this.metricDimensions,
    this.metricName,
    this.metricNamespace,
    this.metricStatisticRecommendation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricDimensions': ?pulumi.Input.mapOptionalInputValue<List<ServiceQuotaUsageMetricMetricDimension>, List<Map<String, dynamic>>>(metricDimensions, (value) => pulumi.Input.encodeList<ServiceQuotaUsageMetricMetricDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metricName': ?metricName,
      'metricNamespace': ?metricNamespace,
      'metricStatisticRecommendation': ?metricStatisticRecommendation,
    };
  }

  factory ServiceQuotaUsageMetric.fromMap(Map<String, dynamic> map) {
    return ServiceQuotaUsageMetric(
      metricDimensions: map['metricDimensions'] == null ? null : ((pulumi.Input.decodeList<ServiceQuotaUsageMetricMetricDimension>(map['metricDimensions']!, (value) => ServiceQuotaUsageMetricMetricDimension.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      metricName: map['metricName'] == null ? null : ((map['metricName'] as String).input()).input(),
      metricNamespace: map['metricNamespace'] == null ? null : ((map['metricNamespace'] as String).input()).input(),
      metricStatisticRecommendation: map['metricStatisticRecommendation'] == null ? null : ((map['metricStatisticRecommendation'] as String).input()).input(),
    );
  }
}

