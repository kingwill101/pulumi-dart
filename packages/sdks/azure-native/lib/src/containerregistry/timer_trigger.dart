// ignore_for_file: unused_element, unnecessary_cast


/// The properties of a timer trigger.
class TimerTrigger {
  /// The name of the trigger.
  final String name;
  /// The CRON expression for the task schedule
  final String schedule;
  /// The current status of trigger.
  final String? status;

  /// Creates a new [TimerTrigger].
  /// [name] The name of the trigger.
  /// [schedule] The CRON expression for the task schedule
  /// [status] The current status of trigger.
  TimerTrigger({
    required this.name,
    required this.schedule,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'schedule': schedule,
      'status': ?status,
    };
  }

  factory TimerTrigger.fromMap(Map<String, dynamic> map) {
    return TimerTrigger(
      name: map['name'] as String,
      schedule: map['schedule'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

