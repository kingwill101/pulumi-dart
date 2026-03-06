// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of NFS StorageClass
class NfsStorageClassTypePropertiesResponse {
  /// Mounted folder permissions. Default is 0. If set as non-zero, driver will perform `chmod` after mount
  final pulumi.Input<String>? mountPermissions;
  /// The action to take when a NFS volume is deleted. Default is Delete
  final pulumi.Input<String>? onDelete;
  /// NFS Server
  final pulumi.Input<String> server;
  /// NFS share
  final pulumi.Input<String> share;
  /// Sub directory under share. If the sub directory doesn't exist, driver will create it
  final pulumi.Input<String>? subDir;
  /// Type of a storage class
  /// Expected value is 'NFS'.
  final pulumi.Input<String> type;

  /// Creates a new [NfsStorageClassTypePropertiesResponse].
  /// [mountPermissions] Mounted folder permissions. Default is 0. If set as non-zero, driver will perform `chmod` after mount
  /// [onDelete] The action to take when a NFS volume is deleted. Default is Delete
  /// [server] NFS Server
  /// [share] NFS share
  /// [subDir] Sub directory under share. If the sub directory doesn't exist, driver will create it
  /// [type] Type of a storage class
  const NfsStorageClassTypePropertiesResponse({
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
      mountPermissions: (() { final guardedValue = map['mountPermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onDelete: (() { final guardedValue = map['onDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      server: pulumi.Input.fromValue(map['server'] as String),
      share: pulumi.Input.fromValue(map['share'] as String),
      subDir: (() { final guardedValue = map['subDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

