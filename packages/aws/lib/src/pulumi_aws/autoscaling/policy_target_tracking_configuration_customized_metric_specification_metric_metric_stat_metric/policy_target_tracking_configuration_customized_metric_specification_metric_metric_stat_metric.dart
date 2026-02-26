// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../policy_target_tracking_configuration_customized_metric_specification_metric_metric_stat_metric_dimension/policy_target_tracking_configuration_customized_metric_specification_metric_metric_stat_metric_dimension.dart';

class PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetric {
  /// Dimensions of the metric.
  final List<
          PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension>?
      dimensions;

  /// Name of the metric.
  final String metricName;

  /// Namespace of the metric.
  final String namespace;

  PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetric({
    this.dimensions,
    required this.metricName,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dimensionsValue = dimensions;
    if (dimensionsValue != null) {
      map['dimensions'] = Input.encodeList<
          PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension,
          Map<String, dynamic>>(dimensionsValue, (value) => value.toMap());
    }
    map['metricName'] = metricName;
    map['namespace'] = namespace;
    return map;
  }

  factory PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetric.fromMap(
      Map<String, dynamic> map) {
    return PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetric(
      dimensions: map['dimensions'] == null
          ? null
          : Input.decodeList<
                  PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension>(
              map['dimensions'],
              (value) =>
                  PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension
                      .fromMap((value as Map).cast<String, dynamic>())),
      metricName: map['metricName'] as String,
      namespace: map['namespace'] as String,
    );
  }
}
