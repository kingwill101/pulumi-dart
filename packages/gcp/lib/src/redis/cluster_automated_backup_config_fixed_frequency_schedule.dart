// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_automated_backup_config_fixed_frequency_schedule_start_time.dart';

class ClusterAutomatedBackupConfigFixedFrequencySchedule {
  /// The start time of every automated backup in UTC.
  /// It must be set to the start of an hour. This field is required.
  /// Structure is documented below.
  final ClusterAutomatedBackupConfigFixedFrequencyScheduleStartTime startTime;

  /// Creates a new [ClusterAutomatedBackupConfigFixedFrequencySchedule].
  /// [startTime] The start time of every automated backup in UTC.
  ClusterAutomatedBackupConfigFixedFrequencySchedule({required this.startTime});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'startTime': startTime.toMap()};
  }

  factory ClusterAutomatedBackupConfigFixedFrequencySchedule.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterAutomatedBackupConfigFixedFrequencySchedule(
      startTime:
          ClusterAutomatedBackupConfigFixedFrequencyScheduleStartTime.fromMap(
            (map['startTime'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
