// ignore_for_file: unused_element, unnecessary_cast

class InstanceAutomatedBackupConfigFixedFrequencyScheduleStartTime {
  /// Hours of day in 24 hour format. Should be from 0 to 23.
  /// An API may choose to allow the value "24:00:00" for scenarios like business closing time.
  final int hours;

  InstanceAutomatedBackupConfigFixedFrequencyScheduleStartTime({
    required this.hours,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hours'] = hours;
    return map;
  }

  factory InstanceAutomatedBackupConfigFixedFrequencyScheduleStartTime.fromMap(
      Map<String, dynamic> map) {
    return InstanceAutomatedBackupConfigFixedFrequencyScheduleStartTime(
      hours: map['hours'] as int,
    );
  }
}
