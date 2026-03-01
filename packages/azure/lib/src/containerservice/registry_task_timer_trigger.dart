// ignore_for_file: unused_element, unnecessary_cast


class RegistryTaskTimerTrigger {
  /// Should the trigger be enabled? Defaults to `true`.
  final bool? enabled;
  /// The name which should be used for this trigger.
  final String name;
  /// The CRON expression for the task schedule.
  final String schedule;

  /// Creates a new [RegistryTaskTimerTrigger].
  /// [enabled] Should the trigger be enabled? Defaults to `true`.
  /// [name] The name which should be used for this trigger.
  /// [schedule] The CRON expression for the task schedule.
  RegistryTaskTimerTrigger({
    this.enabled,
    required this.name,
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'name': name,
      'schedule': schedule,
    };
  }

  factory RegistryTaskTimerTrigger.fromMap(Map<String, dynamic> map) {
    return RegistryTaskTimerTrigger(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      name: map['name'] as String,
      schedule: map['schedule'] as String,
    );
  }
}

