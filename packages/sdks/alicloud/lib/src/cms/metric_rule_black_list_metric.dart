// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetricRuleBlackListMetric {
  /// The name of the monitoring indicator.
  final pulumi.Input<String> metricName;
  /// The extended dimension information of the instance. For example, '{"device":"C:"}' indicates that the blacklist policy is applied to all C disks under the ECS instance.
  final pulumi.Input<String>? resource;

  /// Creates a new [MetricRuleBlackListMetric].
  /// [metricName] The name of the monitoring indicator.
  /// [resource] The extended dimension information of the instance. For example, '{"device":"C:"}' indicates that the blacklist policy is applied to all C disks under the ECS instance.
  MetricRuleBlackListMetric({
    required this.metricName,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricName': metricName,
      'resource': ?resource,
    };
  }

  factory MetricRuleBlackListMetric.fromMap(Map<String, dynamic> map) {
    return MetricRuleBlackListMetric(
      metricName: (map['metricName'] as String).input(),
      resource: map['resource'] == null ? null : (map['resource'] as String).input(),
    );
  }
}

