// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The data disks groups for the role.
class DataDisksGroupsResponse {
  /// ReadOnly. The DiskSize in GB. Do not set this value.
  final pulumi.Input<int> diskSizeGB;
  /// The number of disks per node.
  final pulumi.Input<int>? disksPerNode;
  /// ReadOnly. The storage account type. Do not set this value.
  final pulumi.Input<String> storageAccountType;

  /// Creates a new [DataDisksGroupsResponse].
  /// [diskSizeGB] ReadOnly. The DiskSize in GB. Do not set this value.
  /// [disksPerNode] The number of disks per node.
  /// [storageAccountType] ReadOnly. The storage account type. Do not set this value.
  DataDisksGroupsResponse({
    required this.diskSizeGB,
    this.disksPerNode,
    required this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGB': diskSizeGB,
      'disksPerNode': ?disksPerNode,
      'storageAccountType': storageAccountType,
    };
  }

  factory DataDisksGroupsResponse.fromMap(Map<String, dynamic> map) {
    return DataDisksGroupsResponse(
      diskSizeGB: (map['diskSizeGB'] as int).input(),
      disksPerNode: map['disksPerNode'] == null ? null : (map['disksPerNode']! as int).input(),
      storageAccountType: (map['storageAccountType'] as String).input(),
    );
  }
}

