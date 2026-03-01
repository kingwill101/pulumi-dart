// ignore_for_file: unused_element, unnecessary_cast


/// The properties of NFS StorageClass
class NfsStorageClassTypePropertiesResponse {
  /// Mounted folder permissions. Default is 0. If set as non-zero, driver will perform `chmod` after mount
  final String? mountPermissions;
  /// The action to take when a NFS volume is deleted. Default is Delete
  final String? onDelete;
  /// NFS Server
  final String server;
  /// NFS share
  final String share;
  /// Sub directory under share. If the sub directory doesn't exist, driver will create it
  final String? subDir;
  /// Type of a storage class
  /// Expected value is 'NFS'.
  final String type;

  /// Creates a new [NfsStorageClassTypePropertiesResponse].
  /// [mountPermissions] Mounted folder permissions. Default is 0. If set as non-zero, driver will perform `chmod` after mount
  /// [onDelete] The action to take when a NFS volume is deleted. Default is Delete
  /// [server] NFS Server
  /// [share] NFS share
  /// [subDir] Sub directory under share. If the sub directory doesn't exist, driver will create it
  /// [type] Type of a storage class
  NfsStorageClassTypePropertiesResponse({
    this.mountPermissions,
    this.onDelete,
    required this.server,
    required this.share,
    this.subDir,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPermissions': ?mountPermissions,
      'onDelete': ?onDelete,
      'server': server,
      'share': share,
      'subDir': ?subDir,
      'type': type,
    };
  }

  factory NfsStorageClassTypePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NfsStorageClassTypePropertiesResponse(
      mountPermissions: map['mountPermissions'] == null ? null : map['mountPermissions'] as String,
      onDelete: map['onDelete'] == null ? null : map['onDelete'] as String,
      server: map['server'] as String,
      share: map['share'] as String,
      subDir: map['subDir'] == null ? null : map['subDir'] as String,
      type: map['type'] as String,
    );
  }
}

