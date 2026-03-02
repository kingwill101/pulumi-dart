// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VMware to AzStackHCI Replication extension model custom properties.
class VMwareToAzStackHCIReplicationExtensionModelCustomProperties {
  /// Gets or sets the ARM Id of the target AzStackHCI fabric.
  final pulumi.Input<String> azStackHciFabricArmId;
  /// Gets or sets the instance type.
  /// Expected value is 'VMwareToAzStackHCI'.
  final pulumi.Input<String> instanceType;
  /// Gets or sets the storage account Id.
  final pulumi.Input<String>? storageAccountId;
  /// Gets or sets the Sas Secret of storage account.
  final pulumi.Input<String>? storageAccountSasSecretName;
  /// Gets or sets the ARM Id of the source VMware fabric.
  final pulumi.Input<String> vmwareFabricArmId;

  /// Creates a new [VMwareToAzStackHCIReplicationExtensionModelCustomProperties].
  /// [azStackHciFabricArmId] Gets or sets the ARM Id of the target AzStackHCI fabric.
  /// [instanceType] Gets or sets the instance type.
  /// [storageAccountId] Gets or sets the storage account Id.
  /// [storageAccountSasSecretName] Gets or sets the Sas Secret of storage account.
  /// [vmwareFabricArmId] Gets or sets the ARM Id of the source VMware fabric.
  VMwareToAzStackHCIReplicationExtensionModelCustomProperties({
    required this.azStackHciFabricArmId,
    required this.instanceType,
    this.storageAccountId,
    this.storageAccountSasSecretName,
    required this.vmwareFabricArmId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azStackHciFabricArmId': azStackHciFabricArmId,
      'instanceType': instanceType,
      'storageAccountId': ?storageAccountId,
      'storageAccountSasSecretName': ?storageAccountSasSecretName,
      'vmwareFabricArmId': vmwareFabricArmId,
    };
  }

  factory VMwareToAzStackHCIReplicationExtensionModelCustomProperties.fromMap(Map<String, dynamic> map) {
    return VMwareToAzStackHCIReplicationExtensionModelCustomProperties(
      azStackHciFabricArmId: (map['azStackHciFabricArmId'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      storageAccountId: map['storageAccountId'] == null ? null : (map['storageAccountId'] as String).input(),
      storageAccountSasSecretName: map['storageAccountSasSecretName'] == null ? null : (map['storageAccountSasSecretName'] as String).input(),
      vmwareFabricArmId: (map['vmwareFabricArmId'] as String).input(),
    );
  }
}

