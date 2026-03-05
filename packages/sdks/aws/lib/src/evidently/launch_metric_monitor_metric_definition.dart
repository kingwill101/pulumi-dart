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
      entityIdKey: pulumi.Input.fromValue(map['entityIdKey'] as String),
      eventPattern: (() { final guardedValue = map['eventPattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      unitLabel: (() { final guardedValue = map['unitLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueKey: pulumi.Input.fromValue(map['valueKey'] as String),
    );
  }
}

