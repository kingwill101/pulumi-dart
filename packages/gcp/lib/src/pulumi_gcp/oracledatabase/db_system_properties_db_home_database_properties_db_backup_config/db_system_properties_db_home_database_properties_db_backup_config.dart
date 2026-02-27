// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../db_system_properties_db_home_database_properties_db_backup_config_backup_destination_detail/db_system_properties_db_home_database_properties_db_backup_config_backup_destination_detail.dart';

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
  final List<
          DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfigBackupDestinationDetail>?
      backupDestinationDetails;

  /// The number of days an automatic backup is retained before being
  /// automatically deleted. This value determines the earliest point in time to
  /// which a database can be restored. Min: 1, Max: 60.
  final int? retentionPeriodDays;

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
    final map = <String, dynamic>{};
    final autoBackupEnabledValue = autoBackupEnabled;
    if (autoBackupEnabledValue != null) {
      map['autoBackupEnabled'] = autoBackupEnabledValue;
    }
    final autoFullBackupDayValue = autoFullBackupDay;
    if (autoFullBackupDayValue != null) {
      map['autoFullBackupDay'] = autoFullBackupDayValue;
    }
    final autoFullBackupWindowValue = autoFullBackupWindow;
    if (autoFullBackupWindowValue != null) {
      map['autoFullBackupWindow'] = autoFullBackupWindowValue;
    }
    final autoIncrementalBackupWindowValue = autoIncrementalBackupWindow;
    if (autoIncrementalBackupWindowValue != null) {
      map['autoIncrementalBackupWindow'] = autoIncrementalBackupWindowValue;
    }
    final backupDeletionPolicyValue = backupDeletionPolicy;
    if (backupDeletionPolicyValue != null) {
      map['backupDeletionPolicy'] = backupDeletionPolicyValue;
    }
    final backupDestinationDetailsValue = backupDestinationDetails;
    if (backupDestinationDetailsValue != null) {
      map['backupDestinationDetails'] = pulumi.Input.encodeList<
          DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfigBackupDestinationDetail,
          Map<String,
              dynamic>>(backupDestinationDetailsValue, (value) => value.toMap());
    }
    final retentionPeriodDaysValue = retentionPeriodDays;
    if (retentionPeriodDaysValue != null) {
      map['retentionPeriodDays'] = retentionPeriodDaysValue;
    }
    return map;
  }

  factory DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfig.fromMap(
      Map<String, dynamic> map) {
    return DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfig(
      autoBackupEnabled: map['autoBackupEnabled'] == null
          ? null
          : map['autoBackupEnabled'] as bool,
      autoFullBackupDay: map['autoFullBackupDay'] == null
          ? null
          : map['autoFullBackupDay'] as String,
      autoFullBackupWindow: map['autoFullBackupWindow'] == null
          ? null
          : map['autoFullBackupWindow'] as String,
      autoIncrementalBackupWindow: map['autoIncrementalBackupWindow'] == null
          ? null
          : map['autoIncrementalBackupWindow'] as String,
      backupDeletionPolicy: map['backupDeletionPolicy'] == null
          ? null
          : map['backupDeletionPolicy'] as String,
      backupDestinationDetails: map['backupDestinationDetails'] == null
          ? null
          : pulumi.Input.decodeList<
                  DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfigBackupDestinationDetail>(
              map['backupDestinationDetails'],
              (value) =>
                  DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfigBackupDestinationDetail
                      .fromMap((value as Map).cast<String, dynamic>())),
      retentionPeriodDays: map['retentionPeriodDays'] == null
          ? null
          : map['retentionPeriodDays'] as int,
    );
  }
}
