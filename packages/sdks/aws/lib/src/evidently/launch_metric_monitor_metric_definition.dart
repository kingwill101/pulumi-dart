// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchMetricMonitorMetricDefinition {
  /// Specifies the entity, such as a user or session, that does an action that causes a metric value to be recorded. An example is `userDetails.userID`.
  final pulumi.Input<String> entityIdKey;
  /// Specifies The EventBridge event pattern that defines how the metric is recorded.
  final pulumi.Input<String>? eventPattern;
  /// Specifies the name for the metric.
  final pulumi.Input<String> name;
  /// Specifies a label for the units that the metric is measuring.
  final pulumi.Input<String>? unitLabel;
  /// Specifies the value that is tracked to produce the metric.
  final pulumi.Input<String> valueKey;

  /// Creates a new [LaunchMetricMonitorMetricDefinition].
  /// [entityIdKey] Specifies the entity, such as a user or session, that does an action that causes a metric value to be recorded. An example is `userDetails.userID`.
  /// [eventPattern] Specifies The EventBridge event pattern that defines how the metric is recorded.
  /// [name] Specifies the name for the metric.
  /// [unitLabel] Specifies a label for the units that the metric is measuring.
  /// [valueKey] Specifies the value that is tracked to produce the metric.
  LaunchMetricMonitorMetricDefinition({
    required this.entityIdKey,
    this.eventPattern,
    required this.name,
    this.unitLabel,
    required this.valueKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityIdKey': entityIdKey,
      'eventPattern': ?eventPattern,
      'name': name,
      'unitLabel': ?unitLabel,
      'valueKey': valueKey,
    };
  }

  factory LaunchMetricMonitorMetricDefinition.fromMap(Map<String, dynamic> map) {
    return LaunchMetricMonitorMetricDefinition(
      entityIdKey: (map['entityIdKey'] as String).input(),
      eventPattern: map['eventPattern'] == null ? null : (map['eventPattern'] as String).input(),
      name: (map['name'] as String).input(),
      unitLabel: map['unitLabel'] == null ? null : (map['unitLabel'] as String).input(),
      valueKey: (map['valueKey'] as String).input(),
    );
  }
}

