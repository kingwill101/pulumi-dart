// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage Profile properties of a server
class BackupResponse {
  /// Backup interval hours for the server.
  final pulumi.Input<int>? backupIntervalHours;
  /// Backup retention days for the server.
  final pulumi.Input<int>? backupRetentionDays;
  /// Earliest restore point creation time (ISO8601 format)
  final pulumi.Input<String> earliestRestoreDate;
  /// Whether or not geo redundant backup is enabled.
  final pulumi.Input<String>? geoRedundantBackup;

  /// Creates a new [BackupResponse].
  /// [backupIntervalHours] Backup interval hours for the server.
  /// [backupRetentionDays] Backup retention days for the server.
  /// [earliestRestoreDate] Earliest restore point creation time (ISO8601 format)
  /// [geoRedundantBackup] Whether or not geo redundant backup is enabled.
  BackupResponse({
    this.backupIntervalHours,
    this.backupRetentionDays,
    required this.earliestRestoreDate,
    this.geoRedundantBackup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupIntervalHours': ?backupIntervalHours,
      'backupRetentionDays': ?backupRetentionDays,
      'earliestRestoreDate': earliestRestoreDate,
      'geoRedundantBackup': ?geoRedundantBackup,
    };
  }

  factory BackupResponse.fromMap(Map<String, dynamic> map) {
    return BackupResponse(
      backupIntervalHours: map['backupIntervalHours'] == null ? null : (map['backupIntervalHours'] as int).input(),
      backupRetentionDays: map['backupRetentionDays'] == null ? null : (map['backupRetentionDays'] as int).input(),
      earliestRestoreDate: (map['earliestRestoreDate'] as String).input(),
      geoRedundantBackup: map['geoRedundantBackup'] == null ? null : (map['geoRedundantBackup'] as String).input(),
    );
  }
}

