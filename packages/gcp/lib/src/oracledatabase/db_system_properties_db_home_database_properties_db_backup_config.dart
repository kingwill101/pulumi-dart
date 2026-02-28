// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_system_properties_db_home_database_properties_db_backup_config_backup_destination_detail.dart';

class DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfig {
  /// If set to true, enables automatic backups on the database.
  final bool? autoBackupEnabled;
  /// Possible values:
  /// MONDAY
  /// TUESDAY
  /// WEDNESDAY
  /// THURSDAY
  /// FRIDAY
  /// SATURDAY
  /// SUNDAY
  final String? autoFullBackupDay;
  /// The window in which the full backup should be performed on the database.
  /// If no value is provided, the default is anytime.
  /// Possible values:
  /// SLOT_ONE
  /// SLOT_TWO
  /// SLOT_THREE
  /// SLOT_FOUR
  /// SLOT_FIVE
  /// SLOT_SIX
  /// SLOT_SEVEN
  /// SLOT_EIGHT
  /// SLOT_NINE
  /// SLOT_TEN
  /// SLOT_ELEVEN
  /// SLOT_TWELVE
  final String? autoFullBackupWindow;
  /// The window in which the incremental backup should be performed on the
  /// database. If no value is provided, the default is anytime except the auto
  /// full backup day.
  /// Possible values:
  /// SLOT_ONE
  /// SLOT_TWO
  /// SLOT_THREE
  /// SLOT_FOUR
  /// SLOT_FIVE
  /// SLOT_SIX
  /// SLOT_SEVEN
  /// SLOT_EIGHT
  /// SLOT_NINE
  /// SLOT_TEN
  /// SLOT_ELEVEN
  /// SLOT_TWELVE
  final String? autoIncrementalBackupWindow;
  /// This defines when the backups will be deleted after Database termination.
  /// Possible values:
  /// DELETE_IMMEDIATELY
  /// DELETE_AFTER_RETENTION_PERIOD
  final String? backupDeletionPolicy;
  /// Details of the database backup destinations.
  /// Structure is documented below.
  final List<DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfigBackupDestinationDetail>? backupDestinationDetails;
  /// The number of days an automatic backup is retained before being
  /// automatically deleted. This value determines the earliest point in time to
  /// which a database can be restored. Min: 1, Max: 60.
  final int? retentionPeriodDays;

  /// Creates a new [DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfig].
  /// [autoBackupEnabled] If set to true, enables automatic backups on the database.
  /// [autoFullBackupDay] Possible values:
  /// [autoFullBackupWindow] The window in which the full backup should be performed on the database.
  /// [autoIncrementalBackupWindow] The window in which the incremental backup should be performed on the
  /// [backupDeletionPolicy] This defines when the backups will be deleted after Database termination.
  /// [backupDestinationDetails] Details of the database backup destinations.
  /// [retentionPeriodDays] The number of days an automatic backup is retained before being
  DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfig({
    this.autoBackupEnabled,
    this.autoFullBackupDay,
    this.autoFullBackupWindow,
    this.autoIncrementalBackupWindow,
    this.backupDeletionPolicy,
    this.backupDestinationDetails,
    this.retentionPeriodDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoBackupEnabled': ?autoBackupEnabled,
      'autoFullBackupDay': ?autoFullBackupDay,
      'autoFullBackupWindow': ?autoFullBackupWindow,
      'autoIncrementalBackupWindow': ?autoIncrementalBackupWindow,
      'backupDeletionPolicy': ?backupDeletionPolicy,
      'backupDestinationDetails': ?backupDestinationDetails == null ? null : pulumi.Input.encodeList<DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfigBackupDestinationDetail, Map<String, dynamic>>(backupDestinationDetails!, (value) => value.toMap()),
      'retentionPeriodDays': ?retentionPeriodDays,
    };
  }

  factory DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfig.fromMap(Map<String, dynamic> map) {
    return DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfig(
      autoBackupEnabled: map['autoBackupEnabled'] == null ? null : map['autoBackupEnabled'] as bool,
      autoFullBackupDay: map['autoFullBackupDay'] == null ? null : map['autoFullBackupDay'] as String,
      autoFullBackupWindow: map['autoFullBackupWindow'] == null ? null : map['autoFullBackupWindow'] as String,
      autoIncrementalBackupWindow: map['autoIncrementalBackupWindow'] == null ? null : map['autoIncrementalBackupWindow'] as String,
      backupDeletionPolicy: map['backupDeletionPolicy'] == null ? null : map['backupDeletionPolicy'] as String,
      backupDestinationDetails: map['backupDestinationDetails'] == null ? null : pulumi.Input.decodeList<DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfigBackupDestinationDetail>(map['backupDestinationDetails'], (value) => DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfigBackupDestinationDetail.fromMap((value as Map).cast<String, dynamic>())),
      retentionPeriodDays: map['retentionPeriodDays'] == null ? null : map['retentionPeriodDays'] as int,
    );
  }
}

