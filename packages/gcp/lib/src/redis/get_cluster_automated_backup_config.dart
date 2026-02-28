// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_automated_backup_config_fixed_frequency_schedule.dart';

class GetClusterAutomatedBackupConfig {
  /// Trigger automated backups at a fixed frequency.
  final List<GetClusterAutomatedBackupConfigFixedFrequencySchedule>
      fixedFrequencySchedules;

  /// How long to keep automated backups before the backups are deleted.
  /// The value should be between 1 day and 365 days. If not specified, the default value is 35 days.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final String retention;

  /// Creates a new [GetClusterAutomatedBackupConfig].
  /// [fixedFrequencySchedules] Trigger automated backups at a fixed frequency.
  /// [retention] How long to keep automated backups before the backups are deleted.
  GetClusterAutomatedBackupConfig({
    required this.fixedFrequencySchedules,
    required this.retention,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fixedFrequencySchedules'] = pulumi.Input.encodeList<
            GetClusterAutomatedBackupConfigFixedFrequencySchedule,
            Map<String, dynamic>>(
        fixedFrequencySchedules, (value) => value.toMap());
    map['retention'] = retention;
    return map;
  }

  factory GetClusterAutomatedBackupConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAutomatedBackupConfig(
      fixedFrequencySchedules: pulumi.Input.decodeList<
              GetClusterAutomatedBackupConfigFixedFrequencySchedule>(
          map['fixedFrequencySchedules'],
          (value) =>
              GetClusterAutomatedBackupConfigFixedFrequencySchedule.fromMap(
                  (value as Map).cast<String, dynamic>())),
      retention: map['retention'] as String,
    );
  }
}
