// ignore_for_file: unused_element, unnecessary_cast


class TimerTriggerDescriptorResponse {
  /// The occurrence that triggered the run.
  final String? scheduleOccurrence;
  /// The timer trigger name that caused the run.
  final String? timerTriggerName;

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
      scheduleOccurrence: map['scheduleOccurrence'] == null ? null : map['scheduleOccurrence'] as String,
      timerTriggerName: map['timerTriggerName'] == null ? null : map['timerTriggerName'] as String,
    );
  }
}

