// ignore_for_file: unused_element, unnecessary_cast


/// Details of the managed disks.
class ManagedDiskDetails {
  /// Account Type of the data to be transferred.
  /// Expected value is 'ManagedDisk'.
  final String dataAccountType;
  /// Resource Group Id of the compute disks.
  final String resourceGroupId;
  /// Password for all the shares to be created on the device. Should not be passed for TransferType:ExportFromAzure jobs. If this is not passed, the service will generate password itself. This will not be returned in Get Call. Password Requirements :  Password must be minimum of 12 and maximum of 64 characters. Password must have at least one uppercase alphabet, one number and one special character. Password cannot have the following characters : IilLoO0 Password can have only alphabets, numbers and these characters : @#\-$%^!+=;:_()]+
  final String? sharePassword;
  /// Resource Id of the storage account that can be used to copy the vhd for staging.
  final String stagingStorageAccountId;

  /// Creates a new [ManagedDiskDetails].
  /// [dataAccountType] Account Type of the data to be transferred.
  /// [resourceGroupId] Resource Group Id of the compute disks.
  /// [sharePassword] Password for all the shares to be created on the device. Should not be passed for TransferType:ExportFromAzure jobs. If this is not passed, the service will generate password itself. This will not be returned in Get Call. Password Requirements :  Password must be minimum of 12 and maximum of 64 characters. Password must have at least one uppercase alphabet, one number and one special character. Password cannot have the following characters : IilLoO0 Password can have only alphabets, numbers and these characters : @#\-$%^!+=;:_()]+
  /// [stagingStorageAccountId] Resource Id of the storage account that can be used to copy the vhd for staging.
  ManagedDiskDetails({
    required this.dataAccountType,
    required this.resourceGroupId,
    this.sharePassword,
    required this.stagingStorageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataAccountType': dataAccountType,
      'resourceGroupId': resourceGroupId,
      'sharePassword': ?sharePassword,
      'stagingStorageAccountId': stagingStorageAccountId,
    };
  }

  factory ManagedDiskDetails.fromMap(Map<String, dynamic> map) {
    return ManagedDiskDetails(
      dataAccountType: map['dataAccountType'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      sharePassword: map['sharePassword'] == null ? null : map['sharePassword'] as String,
      stagingStorageAccountId: map['stagingStorageAccountId'] as String,
    );
  }
}

