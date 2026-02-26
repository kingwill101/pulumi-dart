// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_automated_backup_config_fixed_frequency_schedule/get_instance_automated_backup_config_fixed_frequency_schedule.dart';

class GetInstanceAutomatedBackupConfig {
  /// Trigger automated backups at a fixed frequency.
  final List<GetInstanceAutomatedBackupConfigFixedFrequencySchedule>
      fixedFrequencySchedules;

  /// How long to keep automated backups before the backups are deleted.
  /// The value should be between 1 day and 365 days. If not specified, the default value is 35 days.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s". The<span pulumi-lang-nodejs=" defaultValue " pulumi-lang-dotnet=" DefaultValue " pulumi-lang-go=" defaultValue " pulumi-lang-python=" default_value " pulumi-lang-yaml=" defaultValue " pulumi-lang-java=" defaultValue "> default_value </span>is "3024000s"
  final String retention;

  GetInstanceAutomatedBackupConfig({
    required this.fixedFrequencySchedules,
    required this.retention,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fixedFrequencySchedules'] = Input.encodeList<
            GetInstanceAutomatedBackupConfigFixedFrequencySchedule,
            Map<String, dynamic>>(
        fixedFrequencySchedules, (value) => value.toMap());
    map['retention'] = retention;
    return map;
  }

  factory GetInstanceAutomatedBackupConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceAutomatedBackupConfig(
      fixedFrequencySchedules: Input.decodeList<
              GetInstanceAutomatedBackupConfigFixedFrequencySchedule>(
          map['fixedFrequencySchedules'],
          (value) =>
              GetInstanceAutomatedBackupConfigFixedFrequencySchedule.fromMap(
                  (value as Map).cast<String, dynamic>())),
      retention: map['retention'] as String,
    );
  }
}
