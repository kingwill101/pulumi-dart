// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Backup properties of a server.
class Backup {
  /// Backup retention days for the server.
  final pulumi.Input<int>? backupRetentionDays;
  /// Indicates if the server is configured to create geographically redundant backups.
  final pulumi.Input<String>? geoRedundantBackup;

  /// Creates a new [Backup].
  /// [backupRetentionDays] Backup retention days for the server.
  /// [geoRedundantBackup] Indicates if the server is configured to create geographically redundant backups.
  Backup({
    this.backupRetentionDays,
    this.geoRedundantBackup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRetentionDays': ?backupRetentionDays,
      'geoRedundantBackup': ?geoRedundantBackup,
    };
  }

  factory Backup.fromMap(Map<String, dynamic> map) {
    return Backup(
      backupRetentionDays: map['backupRetentionDays'] == null ? null : (map['backupRetentionDays'] as int).input(),
      geoRedundantBackup: map['geoRedundantBackup'] == null ? null : (map['geoRedundantBackup'] as String).input(),
    );
  }
}

