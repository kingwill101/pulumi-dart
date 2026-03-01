// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_automated_backup_config_fixed_frequency_schedule_start_time.dart';

class GetInstanceAutomatedBackupConfigFixedFrequencySchedule {
  /// The start time of every automated backup in UTC.
  /// It must be set to the start of an hour. This field is required.
  final List<GetInstanceAutomatedBackupConfigFixedFrequencyScheduleStartTime>
  startTimes;

  /// Creates a new [GetInstanceAutomatedBackupConfigFixedFrequencySchedule].
  /// [startTimes] The start time of every automated backup in UTC.
  GetInstanceAutomatedBackupConfigFixedFrequencySchedule({
    required this.startTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'startTimes':
          pulumi.Input.encodeList<
            GetInstanceAutomatedBackupConfigFixedFrequencyScheduleStartTime,
            Map<String, dynamic>
          >(startTimes, (value) => value.toMap()),
    };
  }

  factory GetInstanceAutomatedBackupConfigFixedFrequencySchedule.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInstanceAutomatedBackupConfigFixedFrequencySchedule(
      startTimes:
          pulumi.Input.decodeList<
            GetInstanceAutomatedBackupConfigFixedFrequencyScheduleStartTime
          >(
            map['startTimes'],
            (value) =>
                GetInstanceAutomatedBackupConfigFixedFrequencyScheduleStartTime.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
