// ignore_for_file: unused_element, unnecessary_cast


class GetMetricRuleBlackListsListMetric {
  /// The name of the monitoring indicator.
  final String metricName;
  /// The extended dimension information of the instance. For example, '{"device":"C:"}' indicates that the blacklist policy is applied to all C disks under the ECS instance.
  final String resource;

  /// Creates a new [GetMetricRuleBlackListsListMetric].
  /// [metricName] The name of the monitoring indicator.
  /// [resource] The extended dimension information of the instance. For example, '{"device":"C:"}' indicates that the blacklist policy is applied to all C disks under the ECS instance.
  GetMetricRuleBlackListsListMetric({
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
      metricName: map['metricName'] as String,
      resource: map['resource'] as String,
    );
  }
}

