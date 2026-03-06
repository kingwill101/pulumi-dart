// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMetricRuleBlackListsListMetric {
  /// The name of the monitoring indicator.
  final pulumi.Input<String> metricName;
  /// The extended dimension information of the instance. For example, '{"device":"C:"}' indicates that the blacklist policy is applied to all C disks under the ECS instance.
  final pulumi.Input<String> resource;

  /// Creates a new [GetMetricRuleBlackListsListMetric].
  /// [metricName] The name of the monitoring indicator.
  /// [resource] The extended dimension information of the instance. For example, '{"device":"C:"}' indicates that the blacklist policy is applied to all C disks under the ECS instance.
  const GetMetricRuleBlackListsListMetric({
    required this.metricName,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricName': metricName,
      'resource': resource,
    };
  }

  factory GetMetricRuleBlackListsListMetric.fromMap(Map<String, dynamic> map) {
    return GetMetricRuleBlackListsListMetric(
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      resource: pulumi.Input.fromValue(map['resource'] as String),
    );
  }
}

