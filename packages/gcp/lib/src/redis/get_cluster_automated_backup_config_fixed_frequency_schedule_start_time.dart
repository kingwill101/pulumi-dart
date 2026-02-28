// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAutomatedBackupConfigFixedFrequencyScheduleStartTime {
  /// Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less than or equal to 23.
  /// An API may choose to allow the value "24:00:00" for scenarios like business closing time.
  final int hours;

  /// Creates a new [GetClusterAutomatedBackupConfigFixedFrequencyScheduleStartTime].
  /// [hours] Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less than or equal to 23.
  GetClusterAutomatedBackupConfigFixedFrequencyScheduleStartTime({
    required this.hours,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hours'] = hours;
    return map;
  }

  factory GetClusterAutomatedBackupConfigFixedFrequencyScheduleStartTime.fromMap(
      Map<String, dynamic> map) {
    return GetClusterAutomatedBackupConfigFixedFrequencyScheduleStartTime(
      hours: map['hours'] as int,
    );
  }
}
