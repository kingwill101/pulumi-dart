// ignore_for_file: unused_element, unnecessary_cast


/// Configuration values for periodic mode backup
class PeriodicModeProperties {
  /// An integer representing the interval in minutes between two backups
  final int? backupIntervalInMinutes;
  /// An integer representing the time (in hours) that each backup is retained
  final int? backupRetentionIntervalInHours;
  /// Enum to indicate type of backup residency
  final String? backupStorageRedundancy;

  /// Creates a new [PeriodicModeProperties].
  /// [backupIntervalInMinutes] An integer representing the interval in minutes between two backups
  /// [backupRetentionIntervalInHours] An integer representing the time (in hours) that each backup is retained
  /// [backupStorageRedundancy] Enum to indicate type of backup residency
  PeriodicModeProperties({
    this.backupIntervalInMinutes,
    this.backupRetentionIntervalInHours,
    this.backupStorageRedundancy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupIntervalInMinutes': ?backupIntervalInMinutes,
      'backupRetentionIntervalInHours': ?backupRetentionIntervalInHours,
      'backupStorageRedundancy': ?backupStorageRedundancy,
    };
  }

  factory PeriodicModeProperties.fromMap(Map<String, dynamic> map) {
    return PeriodicModeProperties(
      backupIntervalInMinutes: map['backupIntervalInMinutes'] == null ? null : map['backupIntervalInMinutes'] as int,
      backupRetentionIntervalInHours: map['backupRetentionIntervalInHours'] == null ? null : map['backupRetentionIntervalInHours'] as int,
      backupStorageRedundancy: map['backupStorageRedundancy'] == null ? null : map['backupStorageRedundancy'] as String,
    );
  }
}

