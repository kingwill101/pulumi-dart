// ignore_for_file: unused_element, unnecessary_cast

class CompositeAlarmActionsSuppressor {
  /// Can be an AlarmName or an Amazon Resource Name (ARN) from an existing alarm.
  final String alarm;

  /// The maximum time in seconds that the composite alarm waits after suppressor alarm goes out of the `ALARM` state. After this time, the composite alarm performs its actions.
  final int extensionPeriod;

  /// The maximum time in seconds that the composite alarm waits for the suppressor alarm to go into the `ALARM` state. After this time, the composite alarm performs its actions.
  final int waitPeriod;

  /// Creates a new [CompositeAlarmActionsSuppressor].
  /// [alarm] Can be an AlarmName or an Amazon Resource Name (ARN) from an existing alarm.
  /// [extensionPeriod] The maximum time in seconds that the composite alarm waits after suppressor alarm goes out of the `ALARM` state. After this time, the composite alarm performs its actions.
  /// [waitPeriod] The maximum time in seconds that the composite alarm waits for the suppressor alarm to go into the `ALARM` state. After this time, the composite alarm performs its actions.
  CompositeAlarmActionsSuppressor({
    required this.alarm,
    required this.extensionPeriod,
    required this.waitPeriod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alarm'] = alarm;
    map['extensionPeriod'] = extensionPeriod;
    map['waitPeriod'] = waitPeriod;
    return map;
  }

  factory CompositeAlarmActionsSuppressor.fromMap(Map<String, dynamic> map) {
    return CompositeAlarmActionsSuppressor(
      alarm: map['alarm'] as String,
      extensionPeriod: map['extensionPeriod'] as int,
      waitPeriod: map['waitPeriod'] as int,
    );
  }
}
