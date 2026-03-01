// ignore_for_file: unused_element, unnecessary_cast

import 'policy_file_share_backup_hourly.dart';

class PolicyFileShareBackup {
  /// Sets the backup frequency. Possible values are `Daily` and `Hourly`.
  ///
  /// > **Note:** This argument is made available for consistency with VM backup policies and to allow for potential future support of weekly backups
  final String frequency;
  /// A `hourly` block defined as below. This is required when `frequency` is set to `Hourly`.
  final PolicyFileShareBackupHourly? hourly;
  /// The time of day to perform the backup in 24-hour format. Times must be either on the hour or half hour (e.g. 12:00, 12:30, 13:00, etc.)
  ///
  /// > **Note:** `time` is required when `frequency` is set to `Daily`.
  final String? time;

  /// Creates a new [PolicyFileShareBackup].
  /// [frequency] Sets the backup frequency. Possible values are `Daily` and `Hourly`.
  /// [hourly] A `hourly` block defined as below. This is required when `frequency` is set to `Hourly`.
  /// [time] The time of day to perform the backup in 24-hour format. Times must be either on the hour or half hour (e.g. 12:00, 12:30, 13:00, etc.)
  PolicyFileShareBackup({
    required this.frequency,
    this.hourly,
    this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': frequency,
      'hourly': ?hourly == null ? null : hourly!.toMap(),
      'time': ?time,
    };
  }

  factory PolicyFileShareBackup.fromMap(Map<String, dynamic> map) {
    return PolicyFileShareBackup(
      frequency: map['frequency'] as String,
      hourly: map['hourly'] == null ? null : PolicyFileShareBackupHourly.fromMap((map['hourly'] as Map).cast<String, dynamic>()),
      time: map['time'] == null ? null : map['time'] as String,
    );
  }
}

