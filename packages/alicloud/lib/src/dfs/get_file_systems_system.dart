// ignore_for_file: unused_element, unnecessary_cast


class GetFileSystemsSystem {
  /// The creation time of the File system.
  final String createTime;
  /// The description of the File system.
  final String description;
  /// The ID of the File System.
  final String fileSystemId;
  /// The name of the File system.
  final String fileSystemName;
  /// The ID of the File System.
  final String id;
  /// The number of Mount points.
  final int mountPointCount;
  /// The number of directories.
  final int numberOfDirectories;
  /// The number of files.
  final int numberOfFiles;
  /// The protocol type. Valid values: `HDFS`.
  final String protocolType;
  /// The preset throughput of the File system. Valid values: `1` to `1024`, Unit: MB/s.
  final int provisionedThroughputInMiBps;
  /// The capacity budget of the File system.
  final int spaceCapacity;
  /// Storage package Id.
  final String storagePackageId;
  /// The storage specifications of the File system. Valid values: `PERFORMANCE`, `STANDARD`.
  final String storageType;
  /// The throughput mode of the File system. Valid values: `Provisioned`, `Standard`.
  final String throughputMode;
  /// The used space of the File system.
  final double usedSpaceSize;
  /// The zone ID of the File system.
  final String zoneId;

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
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      fileSystemId: map['fileSystemId'] as String,
      fileSystemName: map['fileSystemName'] as String,
      id: map['id'] as String,
      mountPointCount: map['mountPointCount'] as int,
      numberOfDirectories: map['numberOfDirectories'] as int,
      numberOfFiles: map['numberOfFiles'] as int,
      protocolType: map['protocolType'] as String,
      provisionedThroughputInMiBps: map['provisionedThroughputInMiBps'] as int,
      spaceCapacity: map['spaceCapacity'] as int,
      storagePackageId: map['storagePackageId'] as String,
      storageType: map['storageType'] as String,
      throughputMode: map['throughputMode'] as String,
      usedSpaceSize: map['usedSpaceSize'] as double,
      zoneId: map['zoneId'] as String,
    );
  }
}

