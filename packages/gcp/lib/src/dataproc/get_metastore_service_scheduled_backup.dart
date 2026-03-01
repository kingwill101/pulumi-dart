// ignore_for_file: unused_element, unnecessary_cast

class GetMetastoreServiceScheduledBackup {
  /// A Cloud Storage URI of a folder, in the format gs://<bucket_name>/<path_inside_bucket>. A sub-folder <backup_folder> containing backup files will be stored below it.
  final String backupLocation;

  /// The scheduled interval in Cron format, see https://en.wikipedia.org/wiki/Cron The default is empty: scheduled backup is not enabled. Must be specified to enable scheduled backups.
  final String cronSchedule;

  /// Defines whether the scheduled backup is enabled. The default value is false.
  final bool enabled;

  /// Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones), e.g. America/Los_Angeles or Africa/Abidjan. If left unspecified, the default is UTC.
  final String timeZone;

  /// Creates a new [GetMetastoreServiceScheduledBackup].
  /// [backupLocation] A Cloud Storage URI of a folder, in the format gs://<bucket_name>/<path_inside_bucket>. A sub-folder <backup_folder> containing backup files will be stored below it.
  /// [cronSchedule] The scheduled interval in Cron format, see https://en.wikipedia.org/wiki/Cron The default is empty: scheduled backup is not enabled. Must be specified to enable scheduled backups.
  /// [enabled] Defines whether the scheduled backup is enabled. The default value is false.
  /// [timeZone] Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones), e.g. America/Los_Angeles or Africa/Abidjan. If left unspecified, the default is UTC.
  GetMetastoreServiceScheduledBackup({
    required this.backupLocation,
    required this.cronSchedule,
    required this.enabled,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupLocation': backupLocation,
      'cronSchedule': cronSchedule,
      'enabled': enabled,
      'timeZone': timeZone,
    };
  }

  factory GetMetastoreServiceScheduledBackup.fromMap(Map<String, dynamic> map) {
    return GetMetastoreServiceScheduledBackup(
      backupLocation: map['backupLocation'] as String,
      cronSchedule: map['cronSchedule'] as String,
      enabled: map['enabled'] as bool,
      timeZone: map['timeZone'] as String,
    );
  }
}
