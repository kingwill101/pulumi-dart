// ignore_for_file: unused_element, unnecessary_cast


class V3ProvisionConfigScheduledAction {
  /// Policy expiration time
  final String? endTime;
  /// Policy Name
  final String? name;
  /// Timing Configuration
  final String? scheduleExpression;
  /// Policy effective time
  final String? startTime;
  /// Number of reserved target resources
  final int? target;
  /// Time zone.
  final String? timeZone;

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
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      scheduleExpression: map['scheduleExpression'] == null ? null : map['scheduleExpression'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      target: map['target'] == null ? null : map['target'] as int,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

