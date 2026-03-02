// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage Profile properties of a server
class StorageProfileResponse {
  /// Backup retention days for the server.
  final pulumi.Input<int>? backupRetentionDays;
  /// Enable Geo-redundant or not for server backup.
  final pulumi.Input<String>? geoRedundantBackup;
  /// Enable Storage Auto Grow.
  final pulumi.Input<String>? storageAutogrow;
  /// Max storage allowed for a server.
  final pulumi.Input<int>? storageMB;

  /// Creates a new [StorageProfileResponse].
  /// [backupRetentionDays] Backup retention days for the server.
  /// [geoRedundantBackup] Enable Geo-redundant or not for server backup.
  /// [storageAutogrow] Enable Storage Auto Grow.
  /// [storageMB] Max storage allowed for a server.
  StorageProfileResponse({
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

  factory StorageProfileResponse.fromMap(Map<String, dynamic> map) {
    return StorageProfileResponse(
      backupRetentionDays: map['backupRetentionDays'] == null ? null : (map['backupRetentionDays']! as int).input(),
      geoRedundantBackup: map['geoRedundantBackup'] == null ? null : (map['geoRedundantBackup']! as String).input(),
      storageAutogrow: map['storageAutogrow'] == null ? null : (map['storageAutogrow']! as String).input(),
      storageMB: map['storageMB'] == null ? null : (map['storageMB']! as int).input(),
    );
  }
}

