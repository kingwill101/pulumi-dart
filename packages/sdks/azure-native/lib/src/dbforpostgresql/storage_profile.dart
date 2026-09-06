// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage Profile properties of a server
class StorageProfile {
  /// Backup retention days for the server.
  final pulumi.Input<int?>? backupRetentionDays;
  /// Enable Geo-redundant or not for server backup.
  final pulumi.Input<dynamic>? geoRedundantBackup;
  /// Enable Storage Auto Grow.
  final pulumi.Input<dynamic>? storageAutogrow;
  /// Max storage allowed for a server.
  final pulumi.Input<int?>? storageMB;

  /// Creates a new [StorageProfile].
  /// [backupRetentionDays] Backup retention days for the server.
  /// [geoRedundantBackup] Enable Geo-redundant or not for server backup.
  /// [storageAutogrow] Enable Storage Auto Grow.
  /// [storageMB] Max storage allowed for a server.
  const StorageProfile({
    this.backupRetentionDays,
    this.geoRedundantBackup,
    this.storageAutogrow,
    this.storageMB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRetentionDays': ?backupRetentionDays,
      'geoRedundantBackup': ?geoRedundantBackup,
      'storageAutogrow': ?storageAutogrow,
      'storageMB': ?storageMB,
    };
  }

  factory StorageProfile.fromMap(Map<String, dynamic> map) {
    return StorageProfile(
      backupRetentionDays: (() { final guardedValue = map['backupRetentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      geoRedundantBackup: (() { final guardedValue = map['geoRedundantBackup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      storageAutogrow: (() { final guardedValue = map['storageAutogrow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      storageMB: (() { final guardedValue = map['storageMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
