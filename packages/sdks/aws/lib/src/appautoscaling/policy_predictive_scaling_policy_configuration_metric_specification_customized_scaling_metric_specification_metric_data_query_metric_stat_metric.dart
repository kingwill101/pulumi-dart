// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_predictive_scaling_policy_configuration_metric_specification_customized_scaling_metric_specification_metric_data_query_metric_stat_metric_dimension.dart';

class PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetric {
  /// Dimensions of the metric. See `predictive_scaling_policy_configuration.metric_specification.customized_scaling_metric_specification.metric_data_query.metric_stat.metric.dimension` Block for details.
  final pulumi.Input<List<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetricDimension>?>? dimensions;
  final pulumi.Input<String?>? metricName;
  final pulumi.Input<String?>? namespace;

  /// Creates a new [PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetric].
  /// [dimensions] Dimensions of the metric. See `predictive_scaling_policy_configuration.metric_specification.customized_scaling_metric_specification.metric_data_query.metric_stat.metric.dimension` Block for details.
  /// [metricName] Optional.
  /// [namespace] Optional.
  const PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetric({
    this.dimensions,
    this.metricName,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetricDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetricDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metricName': ?metricName,
      'namespace': ?namespace,
    };
  }

  factory PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetric.fromMap(Map<String, dynamic> map) {
    return PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetric(
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetricDimension>(guardedValue, (value) => PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetricDimension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      metricName: (() { final guardedValue = map['metricName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
