// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage Profile properties of a server
class Backup {
  /// Backup interval hours for the server.
  final pulumi.Input<int>? backupIntervalHours;
  /// Backup retention days for the server.
  final pulumi.Input<int>? backupRetentionDays;
  /// Whether or not geo redundant backup is enabled.
  final pulumi.Input<String>? geoRedundantBackup;

  /// Creates a new [Backup].
  /// [backupIntervalHours] Backup interval hours for the server.
  /// [backupRetentionDays] Backup retention days for the server.
  /// [geoRedundantBackup] Whether or not geo redundant backup is enabled.
  Backup({
    this.backupIntervalHours,
    this.backupRetentionDays,
    this.geoRedundantBackup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupIntervalHours': ?backupIntervalHours,
      'backupRetentionDays': ?backupRetentionDays,
      'geoRedundantBackup': ?geoRedundantBackup,
    };
  }

  factory Backup.fromMap(Map<String, dynamic> map) {
    return Backup(
      backupIntervalHours: map['backupIntervalHours'] == null ? null : (map['backupIntervalHours']! as int).input(),
      backupRetentionDays: map['backupRetentionDays'] == null ? null : (map['backupRetentionDays']! as int).input(),
      geoRedundantBackup: map['geoRedundantBackup'] == null ? null : (map['geoRedundantBackup']! as String).input(),
    );
  }
}

