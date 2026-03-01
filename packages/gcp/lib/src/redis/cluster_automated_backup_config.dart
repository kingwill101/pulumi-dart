// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_automated_backup_config_fixed_frequency_schedule.dart';

class ClusterAutomatedBackupConfig {
  /// Trigger automated backups at a fixed frequency.
  /// Structure is documented below.
  final ClusterAutomatedBackupConfigFixedFrequencySchedule
  fixedFrequencySchedule;

  /// How long to keep automated backups before the backups are deleted.
  /// The value should be between 1 day and 365 days. If not specified, the default value is 35 days.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final String retention;

  /// Creates a new [ClusterAutomatedBackupConfig].
  /// [fixedFrequencySchedule] Trigger automated backups at a fixed frequency.
  /// [retention] How long to keep automated backups before the backups are deleted.
  ClusterAutomatedBackupConfig({
    required this.fixedFrequencySchedule,
    required this.retention,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedFrequencySchedule': fixedFrequencySchedule.toMap(),
      'retention': retention,
    };
  }

  factory ClusterAutomatedBackupConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAutomatedBackupConfig(
      fixedFrequencySchedule:
          ClusterAutomatedBackupConfigFixedFrequencySchedule.fromMap(
            (map['fixedFrequencySchedule'] as Map).cast<String, dynamic>(),
          ),
      retention: map['retention'] as String,
    );
  }
}
