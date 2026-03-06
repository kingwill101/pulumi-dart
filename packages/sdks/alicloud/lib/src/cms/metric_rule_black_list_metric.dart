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
  const MetricRuleBlackListMetric({
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
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

