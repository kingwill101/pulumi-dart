// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'launch_metric_monitor_metric_definition.dart';

class LaunchMetricMonitor {
  /// A block that defines the metric. Detailed below.
  final pulumi.Input<LaunchMetricMonitorMetricDefinition> metricDefinition;

  /// Creates a new [LaunchMetricMonitor].
  /// [metricDefinition] A block that defines the metric. Detailed below.
  const LaunchMetricMonitor({
    required this.metricDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricDefinition': pulumi.Input.mapInputValue<LaunchMetricMonitorMetricDefinition, Map<String, dynamic>>(metricDefinition, (value) => value.toMap()),
    };
  }

  factory LaunchMetricMonitor.fromMap(Map<String, dynamic> map) {
    return LaunchMetricMonitor(
      metricDefinition: pulumi.Input.fromValue(LaunchMetricMonitorMetricDefinition.fromMap((map['metricDefinition']! as Map).cast<String, dynamic>())),
    );
  }
}

