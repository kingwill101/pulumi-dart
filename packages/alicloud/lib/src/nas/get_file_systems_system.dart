// ignore_for_file: unused_element, unnecessary_cast


class GetFileSystemsSystem {
  /// (Optional, Available in v1.140.0+) The capacity of the file system.
  final int capacity;
  /// Time of creation.
  final String createTime;
  /// Description of the FileSystem.
  final String description;
  /// (Optional, Available in v1.121.2+) Whether the file system is encrypted.
  /// * Valid values:
  final int encryptType;
  /// The type of the file system.
  /// Valid values:
  /// `standard` (Default),
  /// `extreme`.
  final String fileSystemType;
  /// ID of the FileSystem.
  final String id;
  /// (Optional, Available in v1.140.0+) The id of the KMS key.
  final String kmsKeyId;
  /// MeteredSize of the FileSystem.
  final int meteredSize;
  /// The protocol type of the file system.
  /// Valid values:
  /// `NFS`,
  /// `SMB` (Available when the `file_system_type` is `standard`).
  final String protocolType;
  /// ID of the region where the FileSystem is located.
  final String regionId;
  /// The storage type of the file system.
  /// * Valid values:
  /// * `Performance` (Available when the `file_system_type` is `standard`)
  /// * `Capacity` (Available when the `file_system_type` is `standard`)
  final String storageType;
  /// (Optional, Available in v1.140.0+) The id of the zone. Each region consists of multiple isolated locations known as zones. Each zone has an independent power supply and network.
  final String zoneId;

  /// Creates a new [GetFileSystemsSystem].
  /// [capacity] (Optional, Available in v1.140.0+) The capacity of the file system.
  /// [createTime] Time of creation.
  /// [description] Description of the FileSystem.
  /// [encryptType] (Optional, Available in v1.121.2+) Whether the file system is encrypted.
  /// [fileSystemType] The type of the file system.
  /// [id] ID of the FileSystem.
  /// [kmsKeyId] (Optional, Available in v1.140.0+) The id of the KMS key.
  /// [meteredSize] MeteredSize of the FileSystem.
  /// [protocolType] The protocol type of the file system.
  /// [regionId] ID of the region where the FileSystem is located.
  /// [storageType] The storage type of the file system.
  /// [zoneId] (Optional, Available in v1.140.0+) The id of the zone. Each region consists of multiple isolated locations known as zones. Each zone has an independent power supply and network.
  GetFileSystemsSystem({
    required this.capacity,
    required this.createTime,
    required this.description,
    required this.encryptType,
    required this.fileSystemType,
    required this.id,
    required this.kmsKeyId,
    required this.meteredSize,
    required this.protocolType,
    required this.regionId,
    required this.storageType,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'createTime': createTime,
      'description': description,
      'encryptType': encryptType,
      'fileSystemType': fileSystemType,
      'id': id,
      'kmsKeyId': kmsKeyId,
      'meteredSize': meteredSize,
      'protocolType': protocolType,
      'regionId': regionId,
      'storageType': storageType,
      'zoneId': zoneId,
    };
  }

  factory GetFileSystemsSystem.fromMap(Map<String, dynamic> map) {
    return GetFileSystemsSystem(
      capacity: map['capacity'] as int,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      encryptType: map['encryptType'] as int,
      fileSystemType: map['fileSystemType'] as String,
      id: map['id'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      meteredSize: map['meteredSize'] as int,
      protocolType: map['protocolType'] as String,
      regionId: map['regionId'] as String,
      storageType: map['storageType'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

