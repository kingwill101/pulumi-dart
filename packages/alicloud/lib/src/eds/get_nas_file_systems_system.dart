// ignore_for_file: unused_element, unnecessary_cast


class GetNasFileSystemsSystem {
  /// The capacity of nas file system.
  final String capacity;
  /// The create time of nas file system.
  final String createTime;
  /// The description of nas file system.
  final String description;
  /// The filesystem id of nas file system.
  final String fileSystemId;
  /// The type of nas file system.
  final String fileSystemType;
  /// The ID of the Nas File System.
  final String id;
  /// The size of metered.
  final String meteredSize;
  /// The domain of mount target.
  final String mountTargetDomain;
  /// The status of mount target. Valid values: `Pending`, `Active`, `Inactive`,`Deleting`,`Invalid`.
  final String mountTargetStatus;
  /// The name of nas file system.
  final String nasFileSystemName;
  /// The ID of office site.
  final String officeSiteId;
  /// The name of office site.
  final String officeSiteName;
  /// The status of nas file system. Valid values: `Pending`, `Running`, `Stopped`,`Deleting`, `Deleted`, `Invalid`.
  final String status;
  /// The storage type of nas file system.
  final String storageType;
  /// Whether to support Acl.
  final bool supportAcl;
  /// The zone id of nas file system.
  final String zoneId;

  /// Creates a new [GetNasFileSystemsSystem].
  /// [capacity] The capacity of nas file system.
  /// [createTime] The create time of nas file system.
  /// [description] The description of nas file system.
  /// [fileSystemId] The filesystem id of nas file system.
  /// [fileSystemType] The type of nas file system.
  /// [id] The ID of the Nas File System.
  /// [meteredSize] The size of metered.
  /// [mountTargetDomain] The domain of mount target.
  /// [mountTargetStatus] The status of mount target. Valid values: `Pending`, `Active`, `Inactive`,`Deleting`,`Invalid`.
  /// [nasFileSystemName] The name of nas file system.
  /// [officeSiteId] The ID of office site.
  /// [officeSiteName] The name of office site.
  /// [status] The status of nas file system. Valid values: `Pending`, `Running`, `Stopped`,`Deleting`, `Deleted`, `Invalid`.
  /// [storageType] The storage type of nas file system.
  /// [supportAcl] Whether to support Acl.
  /// [zoneId] The zone id of nas file system.
  GetNasFileSystemsSystem({
    required this.capacity,
    required this.createTime,
    required this.description,
    required this.fileSystemId,
    required this.fileSystemType,
    required this.id,
    required this.meteredSize,
    required this.mountTargetDomain,
    required this.mountTargetStatus,
    required this.nasFileSystemName,
    required this.officeSiteId,
    required this.officeSiteName,
    required this.status,
    required this.storageType,
    required this.supportAcl,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'createTime': createTime,
      'description': description,
      'fileSystemId': fileSystemId,
      'fileSystemType': fileSystemType,
      'id': id,
      'meteredSize': meteredSize,
      'mountTargetDomain': mountTargetDomain,
      'mountTargetStatus': mountTargetStatus,
      'nasFileSystemName': nasFileSystemName,
      'officeSiteId': officeSiteId,
      'officeSiteName': officeSiteName,
      'status': status,
      'storageType': storageType,
      'supportAcl': supportAcl,
      'zoneId': zoneId,
    };
  }

  factory GetNasFileSystemsSystem.fromMap(Map<String, dynamic> map) {
    return GetNasFileSystemsSystem(
      capacity: map['capacity'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      fileSystemId: map['fileSystemId'] as String,
      fileSystemType: map['fileSystemType'] as String,
      id: map['id'] as String,
      meteredSize: map['meteredSize'] as String,
      mountTargetDomain: map['mountTargetDomain'] as String,
      mountTargetStatus: map['mountTargetStatus'] as String,
      nasFileSystemName: map['nasFileSystemName'] as String,
      officeSiteId: map['officeSiteId'] as String,
      officeSiteName: map['officeSiteName'] as String,
      status: map['status'] as String,
      storageType: map['storageType'] as String,
      supportAcl: map['supportAcl'] as bool,
      zoneId: map['zoneId'] as String,
    );
  }
}

