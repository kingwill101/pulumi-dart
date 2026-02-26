// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../backup_schedule_encryption_config/backup_schedule_encryption_config.dart';
import '../backup_schedule_spec/backup_schedule_spec.dart';

/// The set of arguments for BackupSchedule.
class BackupScheduleArgs2 {
  /// The database to create the backup schedule on.
  final Input<String> database;

  /// Configuration for the encryption of the backup schedule.
  /// Structure is documented below.
  final Input<BackupScheduleEncryptionConfig>? encryptionConfig;

  /// The schedule creates only full backups..
  final Input<Map<String, dynamic>>? fullBackupSpec;

  /// The schedule creates incremental backup chains.
  final Input<Map<String, dynamic>>? incrementalBackupSpec;

  /// The instance to create the database on.
  final Input<String> instance;

  /// A unique identifier for the backup schedule, which cannot be changed after
  /// the backup schedule is created. Values are of the form [a-z][-a-z0-9]*[a-z0-9].
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: '3.5s'.
  /// You can set this to a value up to 366 days.
  final Input<String> retentionDuration;

  /// Defines specifications of the backup schedule.
  /// Structure is documented below.
  final Input<BackupScheduleSpec>? spec;

  BackupScheduleArgs2({
    required this.database,
    this.encryptionConfig,
    this.fullBackupSpec,
    this.incrementalBackupSpec,
    required this.instance,
    this.name,
    this.project,
    required this.retentionDuration,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['database'] = database;
    final encryptionConfigValue = encryptionConfig;
    if (encryptionConfigValue != null) {
      map['encryptionConfig'] = Input.mapOptionalInputValue<
              BackupScheduleEncryptionConfig, Map<String, dynamic>>(
          encryptionConfigValue, (value) => value.toMap());
    }
    final fullBackupSpecValue = fullBackupSpec;
    if (fullBackupSpecValue != null) {
      map['fullBackupSpec'] = fullBackupSpecValue;
    }
    final incrementalBackupSpecValue = incrementalBackupSpec;
    if (incrementalBackupSpecValue != null) {
      map['incrementalBackupSpec'] = incrementalBackupSpecValue;
    }
    map['instance'] = instance;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['retentionDuration'] = retentionDuration;
    final specValue = spec;
    if (specValue != null) {
      map['spec'] =
          Input.mapOptionalInputValue<BackupScheduleSpec, Map<String, dynamic>>(
              specValue, (value) => value.toMap());
    }
    return map;
  }

  factory BackupScheduleArgs2.fromMap(Map<String, dynamic> map) {
    return BackupScheduleArgs2(
      database: Input.asInput<String>(map['database']),
      encryptionConfig: Input.asOptionalInput<BackupScheduleEncryptionConfig>(
          map['encryptionConfig']),
      fullBackupSpec:
          Input.asOptionalInput<Map<String, dynamic>>(map['fullBackupSpec']),
      incrementalBackupSpec: Input.asOptionalInput<Map<String, dynamic>>(
          map['incrementalBackupSpec']),
      instance: Input.asInput<String>(map['instance']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      retentionDuration: Input.asInput<String>(map['retentionDuration']),
      spec: Input.asOptionalInput<BackupScheduleSpec>(map['spec']),
    );
  }
}
