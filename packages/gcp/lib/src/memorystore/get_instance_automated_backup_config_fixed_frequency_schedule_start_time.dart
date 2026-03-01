// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceAutomatedBackupConfigFixedFrequencyScheduleStartTime {
  /// Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less than or equal to 23.
  /// An API may choose to allow the value "24:00:00" for scenarios like business closing time.
  final int hours;

  /// Creates a new [GetInstanceAutomatedBackupConfigFixedFrequencyScheduleStartTime].
  /// [hours] Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less than or equal to 23.
  GetInstanceAutomatedBackupConfigFixedFrequencyScheduleStartTime({
    required this.hours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': hours,
    };
  }

  factory GetInstanceAutomatedBackupConfigFixedFrequencyScheduleStartTime.fromMap(Map<String, dynamic> map) {
    return GetInstanceAutomatedBackupConfigFixedFrequencyScheduleStartTime(
      hours: map['hours'] as int,
    );
  }
}

