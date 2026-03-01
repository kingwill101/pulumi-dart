// ignore_for_file: unused_element, unnecessary_cast


/// Configuration values for periodic mode backup
class PeriodicModePropertiesResponse {
  /// An integer representing the interval in minutes between two backups
  final int? backupIntervalInMinutes;
  /// An integer representing the time (in hours) that each backup is retained
  final int? backupRetentionIntervalInHours;
  /// Enum to indicate type of backup residency
  final String? backupStorageRedundancy;

  /// Creates a new [PeriodicModePropertiesResponse].
  /// [backupIntervalInMinutes] An integer representing the interval in minutes between two backups
  /// [backupRetentionIntervalInHours] An integer representing the time (in hours) that each backup is retained
  /// [backupStorageRedundancy] Enum to indicate type of backup residency
  PeriodicModePropertiesResponse({
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

  factory PeriodicModePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PeriodicModePropertiesResponse(
      backupIntervalInMinutes: map['backupIntervalInMinutes'] == null ? null : map['backupIntervalInMinutes'] as int,
      backupRetentionIntervalInHours: map['backupRetentionIntervalInHours'] == null ? null : map['backupRetentionIntervalInHours'] as int,
      backupStorageRedundancy: map['backupStorageRedundancy'] == null ? null : map['backupStorageRedundancy'] as String,
    );
  }
}

