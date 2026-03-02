// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFileSystemsSystem {
  /// The creation time of the File system.
  final pulumi.Input<String> createTime;
  /// The description of the File system.
  final pulumi.Input<String> description;
  /// The ID of the File System.
  final pulumi.Input<String> fileSystemId;
  /// The name of the File system.
  final pulumi.Input<String> fileSystemName;
  /// The ID of the File System.
  final pulumi.Input<String> id;
  /// The number of Mount points.
  final pulumi.Input<int> mountPointCount;
  /// The number of directories.
  final pulumi.Input<int> numberOfDirectories;
  /// The number of files.
  final pulumi.Input<int> numberOfFiles;
  /// The protocol type. Valid values: `HDFS`.
  final pulumi.Input<String> protocolType;
  /// The preset throughput of the File system. Valid values: `1` to `1024`, Unit: MB/s.
  final pulumi.Input<int> provisionedThroughputInMiBps;
  /// The capacity budget of the File system.
  final pulumi.Input<int> spaceCapacity;
  /// Storage package Id.
  final pulumi.Input<String> storagePackageId;
  /// The storage specifications of the File system. Valid values: `PERFORMANCE`, `STANDARD`.
  final pulumi.Input<String> storageType;
  /// The throughput mode of the File system. Valid values: `Provisioned`, `Standard`.
  final pulumi.Input<String> throughputMode;
  /// The used space of the File system.
  final pulumi.Input<double> usedSpaceSize;
  /// The zone ID of the File system.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetFileSystemsSystem].
  /// [createTime] The creation time of the File system.
  /// [description] The description of the File system.
  /// [fileSystemId] The ID of the File System.
  /// [fileSystemName] The name of the File system.
  /// [id] The ID of the File System.
  /// [mountPointCount] The number of Mount points.
  /// [numberOfDirectories] The number of directories.
  /// [numberOfFiles] The number of files.
  /// [protocolType] The protocol type. Valid values: `HDFS`.
  /// [provisionedThroughputInMiBps] The preset throughput of the File system. Valid values: `1` to `1024`, Unit: MB/s.
  /// [spaceCapacity] The capacity budget of the File system.
  /// [storagePackageId] Storage package Id.
  /// [storageType] The storage specifications of the File system. Valid values: `PERFORMANCE`, `STANDARD`.
  /// [throughputMode] The throughput mode of the File system. Valid values: `Provisioned`, `Standard`.
  /// [usedSpaceSize] The used space of the File system.
  /// [zoneId] The zone ID of the File system.
  GetFileSystemsSystem({
    required this.createTime,
    required this.description,
    required this.fileSystemId,
    required this.fileSystemName,
    required this.id,
    required this.mountPointCount,
    required this.numberOfDirectories,
    required this.numberOfFiles,
    required this.protocolType,
    required this.provisionedThroughputInMiBps,
    required this.spaceCapacity,
    required this.storagePackageId,
    required this.storageType,
    required this.throughputMode,
    required this.usedSpaceSize,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'fileSystemId': fileSystemId,
      'fileSystemName': fileSystemName,
      'id': id,
      'mountPointCount': mountPointCount,
      'numberOfDirectories': numberOfDirectories,
      'numberOfFiles': numberOfFiles,
      'protocolType': protocolType,
      'provisionedThroughputInMiBps': provisionedThroughputInMiBps,
      'spaceCapacity': spaceCapacity,
      'storagePackageId': storagePackageId,
      'storageType': storageType,
      'throughputMode': throughputMode,
      'usedSpaceSize': usedSpaceSize,
      'zoneId': zoneId,
    };
  }

  factory GetFileSystemsSystem.fromMap(Map<String, dynamic> map) {
    return GetFileSystemsSystem(
      createTime: (map['createTime'] as String).input(),
      description: (map['description'] as String).input(),
      fileSystemId: (map['fileSystemId'] as String).input(),
      fileSystemName: (map['fileSystemName'] as String).input(),
      id: (map['id'] as String).input(),
      mountPointCount: (map['mountPointCount'] as int).input(),
      numberOfDirectories: (map['numberOfDirectories'] as int).input(),
      numberOfFiles: (map['numberOfFiles'] as int).input(),
      protocolType: (map['protocolType'] as String).input(),
      provisionedThroughputInMiBps: (map['provisionedThroughputInMiBps'] as int).input(),
      spaceCapacity: (map['spaceCapacity'] as int).input(),
      storagePackageId: (map['storagePackageId'] as String).input(),
      storageType: (map['storageType'] as String).input(),
      throughputMode: (map['throughputMode'] as String).input(),
      usedSpaceSize: (map['usedSpaceSize'] as double).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

