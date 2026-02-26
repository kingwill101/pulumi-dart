// ignore_for_file: unused_element, unnecessary_cast

import '../launch_metric_monitor_metric_definition/launch_metric_monitor_metric_definition.dart';

class LaunchMetricMonitor {
  /// A block that defines the metric. Detailed below.
  final LaunchMetricMonitorMetricDefinition metricDefinition;

  LaunchMetricMonitor({
    required this.metricDefinition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metricDefinition'] = metricDefinition.toMap();
    return map;
  }

  factory LaunchMetricMonitor.fromMap(Map<String, dynamic> map) {
    return LaunchMetricMonitor(
      metricDefinition: LaunchMetricMonitorMetricDefinition.fromMap(
          (map['metricDefinition'] as Map).cast<String, dynamic>()),
    );
  }
}
