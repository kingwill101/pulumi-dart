// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TimerTriggerDescriptorResponse {
  /// The occurrence that triggered the run.
  final pulumi.Input<String>? scheduleOccurrence;
  /// The timer trigger name that caused the run.
  final pulumi.Input<String>? timerTriggerName;

  /// Creates a new [TimerTriggerDescriptorResponse].
  /// [scheduleOccurrence] The occurrence that triggered the run.
  /// [timerTriggerName] The timer trigger name that caused the run.
  TimerTriggerDescriptorResponse({
    this.scheduleOccurrence,
    this.timerTriggerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduleOccurrence': ?scheduleOccurrence,
      'timerTriggerName': ?timerTriggerName,
    };
  }

  factory TimerTriggerDescriptorResponse.fromMap(Map<String, dynamic> map) {
    return TimerTriggerDescriptorResponse(
      scheduleOccurrence: map['scheduleOccurrence'] == null ? null : (map['scheduleOccurrence'] as String).input(),
      timerTriggerName: map['timerTriggerName'] == null ? null : (map['timerTriggerName'] as String).input(),
    );
  }
}

