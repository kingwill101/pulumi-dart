// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the managed disks.
class ManagedDiskDetailsResponse {
  /// Account Type of the data to be transferred.
  /// Expected value is 'ManagedDisk'.
  final pulumi.Input<String> dataAccountType;
  /// Resource Group Id of the compute disks.
  final pulumi.Input<String> resourceGroupId;
  /// Resource Id of the storage account that can be used to copy the vhd for staging.
  final pulumi.Input<String> stagingStorageAccountId;

  /// Creates a new [ManagedDiskDetailsResponse].
  /// [dataAccountType] Account Type of the data to be transferred.
  /// [resourceGroupId] Resource Group Id of the compute disks.
  /// [stagingStorageAccountId] Resource Id of the storage account that can be used to copy the vhd for staging.
  const ManagedDiskDetailsResponse({
    required this.dataAccountType,
    required this.resourceGroupId,
    required this.stagingStorageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataAccountType': dataAccountType,
      'resourceGroupId': resourceGroupId,
      'stagingStorageAccountId': stagingStorageAccountId,
    };
  }

  factory ManagedDiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ManagedDiskDetailsResponse(
      dataAccountType: pulumi.Input.fromValue(map['dataAccountType'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      stagingStorageAccountId: pulumi.Input.fromValue(map['stagingStorageAccountId'] as String),
    );
  }
}
