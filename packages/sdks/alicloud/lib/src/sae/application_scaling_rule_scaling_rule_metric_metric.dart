// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationScalingRuleScalingRuleMetricMetric {
  /// According to different `metric_type`, set the target value of the corresponding monitoring index.
  final pulumi.Input<int>? metricTargetAverageUtilization;
  /// Monitoring indicator trigger condition. Valid values: `CPU`, `MEMORY`, `tcpActiveConn`, `QPS`, `RT`, `SLB_QPS`, `SLB_RT`, `INTRANET_SLB_QPS` and `INTRANET_SLB_RT`. The values are described as follows:
  /// - CPU: CPU usage.
  /// - MEMORY: MEMORY usage.
  /// - tcpActiveConn: The average number of TCP active connections for a single instance in 30 seconds.
  /// - QPS: The average QPS of a single instance within 1 minute of JAVA application.
  /// - RT: The average response time of all service interfaces within 1 minute of JAVA application.
  /// - SLB_QPS: The average public network SLB QPS of a single instance within 15 seconds.
  /// - SLB_RT: The average response time of public network SLB within 15 seconds.
  /// - INTRANET_SLB_QPS: The average private network SLB QPS of a single instance within 15 seconds.
  /// - INTRANET_SLB_RT: The average response time of private network SLB within 15 seconds.
  /// **NOTE:** From version 1.206.0, `metric_type` can be set to `QPS`, `RT`, `INTRANET_SLB_QPS`, `INTRANET_SLB_RT`.
  final pulumi.Input<String>? metricType;
  /// SLB ID.
  final pulumi.Input<String>? slbId;
  /// The log store of the Log Service.
  final pulumi.Input<String>? slbLogStore;
  /// The project of the Log Service.
  final pulumi.Input<String>? slbProject;
  /// SLB listening port.
  final pulumi.Input<String>? vport;

  /// Creates a new [ApplicationScalingRuleScalingRuleMetricMetric].
  /// [metricTargetAverageUtilization] According to different `metric_type`, set the target value of the corresponding monitoring index.
  /// [metricType] Monitoring indicator trigger condition. Valid values: `CPU`, `MEMORY`, `tcpActiveConn`, `QPS`, `RT`, `SLB_QPS`, `SLB_RT`, `INTRANET_SLB_QPS` and `INTRANET_SLB_RT`. The values are described as follows:
  /// [slbId] SLB ID.
  /// [slbLogStore] The log store of the Log Service.
  /// [slbProject] The project of the Log Service.
  /// [vport] SLB listening port.
  ApplicationScalingRuleScalingRuleMetricMetric({
    this.metricTargetAverageUtilization,
    this.metricType,
    this.slbId,
    this.slbLogStore,
    this.slbProject,
    this.vport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricTargetAverageUtilization': ?metricTargetAverageUtilization,
      'metricType': ?metricType,
      'slbId': ?slbId,
      'slbLogStore': ?slbLogStore,
      'slbProject': ?slbProject,
      'vport': ?vport,
    };
  }

  factory ApplicationScalingRuleScalingRuleMetricMetric.fromMap(Map<String, dynamic> map) {
    return ApplicationScalingRuleScalingRuleMetricMetric(
      metricTargetAverageUtilization: map['metricTargetAverageUtilization'] == null ? null : (map['metricTargetAverageUtilization']! as int).input(),
      metricType: map['metricType'] == null ? null : (map['metricType']! as String).input(),
      slbId: map['slbId'] == null ? null : (map['slbId']! as String).input(),
      slbLogStore: map['slbLogStore'] == null ? null : (map['slbLogStore']! as String).input(),
      slbProject: map['slbProject'] == null ? null : (map['slbProject']! as String).input(),
      vport: map['vport'] == null ? null : (map['vport']! as String).input(),
    );
  }
}

