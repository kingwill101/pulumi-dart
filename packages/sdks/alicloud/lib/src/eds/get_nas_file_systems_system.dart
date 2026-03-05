// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNasFileSystemsSystem {
  /// The capacity of nas file system.
  final pulumi.Input<String> capacity;
  /// The create time of nas file system.
  final pulumi.Input<String> createTime;
  /// The description of nas file system.
  final pulumi.Input<String> description;
  /// The filesystem id of nas file system.
  final pulumi.Input<String> fileSystemId;
  /// The type of nas file system.
  final pulumi.Input<String> fileSystemType;
  /// The ID of the Nas File System.
  final pulumi.Input<String> id;
  /// The size of metered.
  final pulumi.Input<String> meteredSize;
  /// The domain of mount target.
  final pulumi.Input<String> mountTargetDomain;
  /// The status of mount target. Valid values: `Pending`, `Active`, `Inactive`,`Deleting`,`Invalid`.
  final pulumi.Input<String> mountTargetStatus;
  /// The name of nas file system.
  final pulumi.Input<String> nasFileSystemName;
  /// The ID of office site.
  final pulumi.Input<String> officeSiteId;
  /// The name of office site.
  final pulumi.Input<String> officeSiteName;
  /// The status of nas file system. Valid values: `Pending`, `Running`, `Stopped`,`Deleting`, `Deleted`, `Invalid`.
  final pulumi.Input<String> status;
  /// The storage type of nas file system.
  final pulumi.Input<String> storageType;
  /// Whether to support Acl.
  final pulumi.Input<bool> supportAcl;
  /// The zone id of nas file system.
  final pulumi.Input<String> zoneId;

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
      capacity: pulumi.Input.fromValue(map['capacity'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      fileSystemType: pulumi.Input.fromValue(map['fileSystemType'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      meteredSize: pulumi.Input.fromValue(map['meteredSize'] as String),
      mountTargetDomain: pulumi.Input.fromValue(map['mountTargetDomain'] as String),
      mountTargetStatus: pulumi.Input.fromValue(map['mountTargetStatus'] as String),
      nasFileSystemName: pulumi.Input.fromValue(map['nasFileSystemName'] as String),
      officeSiteId: pulumi.Input.fromValue(map['officeSiteId'] as String),
      officeSiteName: pulumi.Input.fromValue(map['officeSiteName'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      storageType: pulumi.Input.fromValue(map['storageType'] as String),
      supportAcl: pulumi.Input.fromValue(map['supportAcl'] as bool),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

