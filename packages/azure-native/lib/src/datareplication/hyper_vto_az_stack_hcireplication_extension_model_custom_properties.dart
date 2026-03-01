// ignore_for_file: unused_element, unnecessary_cast


/// HyperV to AzStackHCI Replication extension model custom properties.
class HyperVToAzStackHCIReplicationExtensionModelCustomProperties {
  /// Gets or sets the ARM Id of the target AzStackHCI fabric.
  final String azStackHciFabricArmId;
  /// Gets or sets the ARM Id of the source HyperV fabric.
  final String hyperVFabricArmId;
  /// Gets or sets the instance type.
  /// Expected value is 'HyperVToAzStackHCI'.
  final String instanceType;
  /// Gets or sets the storage account Id.
  final String? storageAccountId;
  /// Gets or sets the Sas Secret of storage account.
  final String? storageAccountSasSecretName;

  /// Creates a new [HyperVToAzStackHCIReplicationExtensionModelCustomProperties].
  /// [azStackHciFabricArmId] Gets or sets the ARM Id of the target AzStackHCI fabric.
  /// [hyperVFabricArmId] Gets or sets the ARM Id of the source HyperV fabric.
  /// [instanceType] Gets or sets the instance type.
  /// [storageAccountId] Gets or sets the storage account Id.
  /// [storageAccountSasSecretName] Gets or sets the Sas Secret of storage account.
  HyperVToAzStackHCIReplicationExtensionModelCustomProperties({
    required this.azStackHciFabricArmId,
    required this.hyperVFabricArmId,
    required this.instanceType,
    this.storageAccountId,
    this.storageAccountSasSecretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azStackHciFabricArmId': azStackHciFabricArmId,
      'hyperVFabricArmId': hyperVFabricArmId,
      'instanceType': instanceType,
      'storageAccountId': ?storageAccountId,
      'storageAccountSasSecretName': ?storageAccountSasSecretName,
    };
  }

  factory HyperVToAzStackHCIReplicationExtensionModelCustomProperties.fromMap(Map<String, dynamic> map) {
    return HyperVToAzStackHCIReplicationExtensionModelCustomProperties(
      azStackHciFabricArmId: map['azStackHciFabricArmId'] as String,
      hyperVFabricArmId: map['hyperVFabricArmId'] as String,
      instanceType: map['instanceType'] as String,
      storageAccountId: map['storageAccountId'] == null ? null : map['storageAccountId'] as String,
      storageAccountSasSecretName: map['storageAccountSasSecretName'] == null ? null : map['storageAccountSasSecretName'] as String,
    );
  }
}

