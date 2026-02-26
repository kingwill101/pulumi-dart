// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_automated_backup_config_fixed_frequency_schedule_start_time/get_cluster_automated_backup_config_fixed_frequency_schedule_start_time.dart';

class GetClusterAutomatedBackupConfigFixedFrequencySchedule {
  /// The start time of every automated backup in UTC.
  /// It must be set to the start of an hour. This field is required.
  final List<GetClusterAutomatedBackupConfigFixedFrequencyScheduleStartTime>
      startTimes;

  GetClusterAutomatedBackupConfigFixedFrequencySchedule({
    required this.startTimes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['startTimes'] = Input.encodeList<
        GetClusterAutomatedBackupConfigFixedFrequencyScheduleStartTime,
        Map<String, dynamic>>(startTimes, (value) => value.toMap());
    return map;
  }

  factory GetClusterAutomatedBackupConfigFixedFrequencySchedule.fromMap(
      Map<String, dynamic> map) {
    return GetClusterAutomatedBackupConfigFixedFrequencySchedule(
      startTimes: Input.decodeList<
              GetClusterAutomatedBackupConfigFixedFrequencyScheduleStartTime>(
          map['startTimes'],
          (value) =>
              GetClusterAutomatedBackupConfigFixedFrequencyScheduleStartTime
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
