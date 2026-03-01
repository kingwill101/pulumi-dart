// ignore_for_file: unused_element, unnecessary_cast


/// The data disks groups for the role.
class DataDisksGroupsResponse {
  /// ReadOnly. The DiskSize in GB. Do not set this value.
  final int diskSizeGB;
  /// The number of disks per node.
  final int? disksPerNode;
  /// ReadOnly. The storage account type. Do not set this value.
  final String storageAccountType;

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
      diskSizeGB: map['diskSizeGB'] as int,
      disksPerNode: map['disksPerNode'] == null ? null : map['disksPerNode'] as int,
      storageAccountType: map['storageAccountType'] as String,
    );
  }
}

