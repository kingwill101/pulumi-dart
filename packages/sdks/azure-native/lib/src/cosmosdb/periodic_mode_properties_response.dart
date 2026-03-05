// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration values for periodic mode backup
class PeriodicModePropertiesResponse {
  /// An integer representing the interval in minutes between two backups
  final pulumi.Input<int>? backupIntervalInMinutes;
  /// An integer representing the time (in hours) that each backup is retained
  final pulumi.Input<int>? backupRetentionIntervalInHours;
  /// Enum to indicate type of backup residency
  final pulumi.Input<String>? backupStorageRedundancy;

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
      backupIntervalInMinutes: (() { final guardedValue = map['backupIntervalInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      backupRetentionIntervalInHours: (() { final guardedValue = map['backupRetentionIntervalInHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      backupStorageRedundancy: (() { final guardedValue = map['backupStorageRedundancy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

