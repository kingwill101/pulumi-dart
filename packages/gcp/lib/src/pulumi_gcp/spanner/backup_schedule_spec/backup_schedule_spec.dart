// ignore_for_file: unused_element, unnecessary_cast

import '../backup_schedule_spec_cron_spec/backup_schedule_spec_cron_spec.dart';

class BackupScheduleSpec {
  /// Cron style schedule specification..
  /// Structure is documented below.
  final BackupScheduleSpecCronSpec? cronSpec;

  BackupScheduleSpec({
    this.cronSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cronSpecValue = cronSpec;
    if (cronSpecValue != null) {
      map['cronSpec'] = cronSpecValue.toMap();
    }
    return map;
  }

  factory BackupScheduleSpec.fromMap(Map<String, dynamic> map) {
    return BackupScheduleSpec(
      cronSpec: map['cronSpec'] == null
          ? null
          : BackupScheduleSpecCronSpec.fromMap(
              (map['cronSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
