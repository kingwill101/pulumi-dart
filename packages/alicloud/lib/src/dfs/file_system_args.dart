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
    String? dataRedundancyType,
    String? dedicatedClusterId,
    String? description,
    required String fileSystemName,
    int? partitionNumber,
    required String protocolType,
    int? provisionedThroughputInMiBps,
    required int spaceCapacity,
    String? storageSetName,
    required String storageType,
    String? throughputMode,
    String? zoneId,
  }) :
      dataRedundancyType = pulumi.Input.asOptionalInput<String>(dataRedundancyType),
      dedicatedClusterId = pulumi.Input.asOptionalInput<String>(dedicatedClusterId),
      description = pulumi.Input.asOptionalInput<String>(description),
      fileSystemName = pulumi.Input.asInput<String>(fileSystemName),
      partitionNumber = pulumi.Input.asOptionalInput<int>(partitionNumber),
      protocolType = pulumi.Input.asInput<String>(protocolType),
      provisionedThroughputInMiBps = pulumi.Input.asOptionalInput<int>(provisionedThroughputInMiBps),
      spaceCapacity = pulumi.Input.asInput<int>(spaceCapacity),
      storageSetName = pulumi.Input.asOptionalInput<String>(storageSetName),
      storageType = pulumi.Input.asInput<String>(storageType),
      throughputMode = pulumi.Input.asOptionalInput<String>(throughputMode),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      dataRedundancyType: map['dataRedundancyType'] == null ? null : map['dataRedundancyType'] as String,
      dedicatedClusterId: map['dedicatedClusterId'] == null ? null : map['dedicatedClusterId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      fileSystemName: map['fileSystemName'] as String,
      partitionNumber: map['partitionNumber'] == null ? null : map['partitionNumber'] as int,
      protocolType: map['protocolType'] as String,
      provisionedThroughputInMiBps: map['provisionedThroughputInMiBps'] == null ? null : map['provisionedThroughputInMiBps'] as int,
      spaceCapacity: map['spaceCapacity'] as int,
      storageSetName: map['storageSetName'] == null ? null : map['storageSetName'] as String,
      storageType: map['storageType'] as String,
      throughputMode: map['throughputMode'] == null ? null : map['throughputMode'] as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}

