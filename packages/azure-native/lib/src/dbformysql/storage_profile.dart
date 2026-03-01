// ignore_for_file: unused_element, unnecessary_cast


/// Storage Profile properties of a server
class StorageProfile {
  /// Backup retention days for the server.
  final int? backupRetentionDays;
  /// Enable Geo-redundant or not for server backup.
  final String? geoRedundantBackup;
  /// Enable Storage Auto Grow.
  final String? storageAutogrow;
  /// Max storage allowed for a server.
  final int? storageMB;

  /// Creates a new [StorageProfile].
  /// [backupRetentionDays] Backup retention days for the server.
  /// [geoRedundantBackup] Enable Geo-redundant or not for server backup.
  /// [storageAutogrow] Enable Storage Auto Grow.
  /// [storageMB] Max storage allowed for a server.
  StorageProfile({
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
      backupRetentionDays: map['backupRetentionDays'] == null ? null : map['backupRetentionDays'] as int,
      geoRedundantBackup: map['geoRedundantBackup'] == null ? null : map['geoRedundantBackup'] as String,
      storageAutogrow: map['storageAutogrow'] == null ? null : map['storageAutogrow'] as String,
      storageMB: map['storageMB'] == null ? null : map['storageMB'] as int,
    );
  }
}

