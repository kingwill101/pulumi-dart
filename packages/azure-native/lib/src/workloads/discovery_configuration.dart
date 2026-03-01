// ignore_for_file: unused_element, unnecessary_cast


/// Discovery Details.
class DiscoveryConfiguration {
  /// The virtual machine ID of the Central Server.
  final String? centralServerVmId;
  /// The configuration Type.
  /// Expected value is 'Discovery'.
  final String configurationType;
  /// The custom storage account name for the storage account created by the service in the managed resource group created as part of VIS deployment.<br><br>Refer to the storage account naming rules [here](https://learn.microsoft.com/azure/azure-resource-manager/management/resource-name-rules#microsoftstorage).<br><br>If not provided, the service will create the storage account with a random name.
  final String? managedRgStorageAccountName;

  /// Creates a new [DiscoveryConfiguration].
  /// [centralServerVmId] The virtual machine ID of the Central Server.
  /// [configurationType] The configuration Type.
  /// [managedRgStorageAccountName] The custom storage account name for the storage account created by the service in the managed resource group created as part of VIS deployment.<br><br>Refer to the storage account naming rules [here](https://learn.microsoft.com/azure/azure-resource-manager/management/resource-name-rules#microsoftstorage).<br><br>If not provided, the service will create the storage account with a random name.
  DiscoveryConfiguration({
    this.centralServerVmId,
    required this.configurationType,
    this.managedRgStorageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'centralServerVmId': ?centralServerVmId,
      'configurationType': configurationType,
      'managedRgStorageAccountName': ?managedRgStorageAccountName,
    };
  }

  factory DiscoveryConfiguration.fromMap(Map<String, dynamic> map) {
    return DiscoveryConfiguration(
      centralServerVmId: map['centralServerVmId'] == null ? null : map['centralServerVmId'] as String,
      configurationType: map['configurationType'] as String,
      managedRgStorageAccountName: map['managedRgStorageAccountName'] == null ? null : map['managedRgStorageAccountName'] as String,
    );
  }
}

