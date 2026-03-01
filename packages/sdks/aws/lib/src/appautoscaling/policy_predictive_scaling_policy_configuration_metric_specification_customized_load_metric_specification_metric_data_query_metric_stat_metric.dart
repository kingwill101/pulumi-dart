// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_predictive_scaling_policy_configuration_metric_specification_customized_load_metric_specification_metric_data_query_metric_stat_metric_dimension.dart';

class PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetric {
  /// Dimensions of the metric. See supported fields below.
  final List<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetricDimension>? dimensions;
  /// Name of the metric.
  final String? metricName;
  /// Namespace of the metric.
  final String? namespace;

  /// Creates a new [PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetric].
  /// [dimensions] Dimensions of the metric. See supported fields below.
  /// [metricName] Name of the metric.
  /// [namespace] Namespace of the metric.
  PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetric({
    this.dimensions,
    this.metricName,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?dimensions == null ? null : pulumi.Input.encodeList<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetricDimension, Map<String, dynamic>>(dimensions!, (value) => value.toMap()),
      'metricName': ?metricName,
      'namespace': ?namespace,
    };
  }

  factory PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetric.fromMap(Map<String, dynamic> map) {
    return PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetric(
      dimensions: map['dimensions'] == null ? null : pulumi.Input.decodeList<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetricDimension>(map['dimensions'], (value) => PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetricDimension.fromMap((value as Map).cast<String, dynamic>())),
      metricName: map['metricName'] == null ? null : map['metricName'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
    );
  }
}

