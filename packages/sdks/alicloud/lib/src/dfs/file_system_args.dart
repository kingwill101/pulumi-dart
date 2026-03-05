// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dfs_file_system_file_system_args_doc}
/// The set of arguments for FileSystem.
/// {@endtemplate}
/// {@macro pulumi_dfs_file_system_file_system_args_doc}
class FileSystemArgs {
  /// Redundancy mode of the file system. Value:
  /// - LRS (default): Local redundancy.
  /// - ZRS: Same-City redundancy. When ZRS is selected, zoneId is a string consisting of multiple zones that are expected to be redundant in the same city, for example,  'zoneId1,zoneId2 '.
  final pulumi.Input<String>? dataRedundancyType;
  /// Dedicated cluster id, which is used to support scenarios such as group cloud migration.
  final pulumi.Input<String>? dedicatedClusterId;
  /// The description of the file system resource. No more than 32 characters in length.
  final pulumi.Input<String>? description;
  /// The file system name. The naming rules are as follows: The length is 6~64 characters. Globally unique and cannot be an empty string. English letters are supported and can contain numbers, underscores (_), and dashes (-).
  final pulumi.Input<String> fileSystemName;
  /// Save set sequence number, the user selects the content of the specified sequence number in the Save set.
  final pulumi.Input<int>? partitionNumber;
  /// The protocol type. Value: `HDFS`, `PANGU`.
  final pulumi.Input<String> protocolType;
  /// Provisioned throughput. This parameter is required when ThroughputMode is set to Provisioned. Unit: MB/s Value range: 1~5120.
  final pulumi.Input<int>? provisionedThroughputInMiBps;
  /// File system capacity.  When the actual amount of data stored reaches the capacity of the file system, data cannot be written.  Unit: GiB.
  final pulumi.Input<int> spaceCapacity;
  /// Save set identity, used to select a user-specified save set.
  final pulumi.Input<String>? storageSetName;
  /// The storage media type. Value: STANDARD (default): STANDARD PERFORMANCE: PERFORMANCE type.
  final pulumi.Input<String> storageType;
  /// The throughput mode. Value: Standard (default): Standard throughput Provisioned: preset throughput.
  final pulumi.Input<String>? throughputMode;
  /// Zone Id, which is used to create file system resources to the specified zone.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [FileSystemArgs].
  /// [dataRedundancyType] Redundancy mode of the file system. Value:
  /// [dedicatedClusterId] Dedicated cluster id, which is used to support scenarios such as group cloud migration.
  /// [description] The description of the file system resource. No more than 32 characters in length.
  /// [fileSystemName] The file system name. The naming rules are as follows: The length is 6~64 characters. Globally unique and cannot be an empty string. English letters are supported and can contain numbers, underscores (_), and dashes (-).
  /// [partitionNumber] Save set sequence number, the user selects the content of the specified sequence number in the Save set.
  /// [protocolType] The protocol type. Value: `HDFS`, `PANGU`.
  /// [provisionedThroughputInMiBps] Provisioned throughput. This parameter is required when ThroughputMode is set to Provisioned. Unit: MB/s Value range: 1~5120.
  /// [spaceCapacity] File system capacity.  When the actual amount of data stored reaches the capacity of the file system, data cannot be written.  Unit: GiB.
  /// [storageSetName] Save set identity, used to select a user-specified save set.
  /// [storageType] The storage media type. Value: STANDARD (default): STANDARD PERFORMANCE: PERFORMANCE type.
  /// [throughputMode] The throughput mode. Value: Standard (default): Standard throughput Provisioned: preset throughput.
  /// [zoneId] Zone Id, which is used to create file system resources to the specified zone.
  FileSystemArgs({
    this.dataRedundancyType,
    this.dedicatedClusterId,
    this.description,
    required this.fileSystemName,
    this.partitionNumber,
    required this.protocolType,
    this.provisionedThroughputInMiBps,
    required this.spaceCapacity,
    this.storageSetName,
    required this.storageType,
    this.throughputMode,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataRedundancyType': ?dataRedundancyType,
      'dedicatedClusterId': ?dedicatedClusterId,
      'description': ?description,
      'fileSystemName': fileSystemName,
      'partitionNumber': ?partitionNumber,
      'protocolType': protocolType,
      'provisionedThroughputInMiBps': ?provisionedThroughputInMiBps,
      'spaceCapacity': spaceCapacity,
      'storageSetName': ?storageSetName,
      'storageType': storageType,
      'throughputMode': ?throughputMode,
      'zoneId': ?zoneId,
    };
  }

  factory FileSystemArgs.fromMap(Map<String, dynamic> map) {
    return FileSystemArgs(
      dataRedundancyType: (() { final guardedValue = map['dataRedundancyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dedicatedClusterId: (() { final guardedValue = map['dedicatedClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSystemName: pulumi.Input.fromValue(map['fileSystemName'] as String),
      partitionNumber: (() { final guardedValue = map['partitionNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      protocolType: pulumi.Input.fromValue(map['protocolType'] as String),
      provisionedThroughputInMiBps: (() { final guardedValue = map['provisionedThroughputInMiBps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      spaceCapacity: pulumi.Input.fromValue(map['spaceCapacity'] as int),
      storageSetName: (() { final guardedValue = map['storageSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageType: pulumi.Input.fromValue(map['storageType'] as String),
      throughputMode: (() { final guardedValue = map['throughputMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

