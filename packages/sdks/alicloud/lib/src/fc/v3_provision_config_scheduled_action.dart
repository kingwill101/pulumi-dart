// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V3ProvisionConfigScheduledAction {
  /// Policy expiration time
  final pulumi.Input<String>? endTime;

  /// Policy Name
  final pulumi.Input<String>? name;

  /// Timing Configuration
  final pulumi.Input<String>? scheduleExpression;

  /// Policy effective time
  final pulumi.Input<String>? startTime;

  /// Number of reserved target resources
  final pulumi.Input<int>? target;

  /// Time zone.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [V3ProvisionConfigScheduledAction].
  /// [endTime] Policy expiration time
  /// [name] Policy Name
  /// [scheduleExpression] Timing Configuration
  /// [startTime] Policy effective time
  /// [target] Number of reserved target resources
  /// [timeZone] Time zone.
  V3ProvisionConfigScheduledAction({
    this.endTime,
    this.name,
    this.scheduleExpression,
    this.startTime,
    this.target,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'name': ?name,
      'scheduleExpression': ?scheduleExpression,
      'startTime': ?startTime,
      'target': ?target,
      'timeZone': ?timeZone,
    };
  }

  factory V3ProvisionConfigScheduledAction.fromMap(Map<String, dynamic> map) {
    return V3ProvisionConfigScheduledAction(
      endTime: (() {
        final guardedValue = map['endTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scheduleExpression: (() {
        final guardedValue = map['scheduleExpression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      target: (() {
        final guardedValue = map['target'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      timeZone: (() {
        final guardedValue = map['timeZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
