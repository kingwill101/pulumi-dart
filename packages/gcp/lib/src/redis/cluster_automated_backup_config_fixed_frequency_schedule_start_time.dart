// ignore_for_file: unused_element, unnecessary_cast

class ClusterAutomatedBackupConfigFixedFrequencyScheduleStartTime {
  /// Hours of day in 24 hour format. Should be from 0 to 23.
  /// An API may choose to allow the value "24:00:00" for scenarios like business closing time.
  final int hours;

  /// Creates a new [ClusterAutomatedBackupConfigFixedFrequencyScheduleStartTime].
  /// [hours] Hours of day in 24 hour format. Should be from 0 to 23.
  ClusterAutomatedBackupConfigFixedFrequencyScheduleStartTime({
    required this.hours,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hours'] = hours;
    return map;
  }

  factory ClusterAutomatedBackupConfigFixedFrequencyScheduleStartTime.fromMap(
      Map<String, dynamic> map) {
    return ClusterAutomatedBackupConfigFixedFrequencyScheduleStartTime(
      hours: map['hours'] as int,
    );
  }
}
