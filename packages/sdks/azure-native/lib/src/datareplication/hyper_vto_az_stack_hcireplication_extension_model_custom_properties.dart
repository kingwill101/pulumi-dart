// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HyperV to AzStackHCI Replication extension model custom properties.
class HyperVToAzStackHCIReplicationExtensionModelCustomProperties {
  /// Gets or sets the ARM Id of the target AzStackHCI fabric.
  final pulumi.Input<String> azStackHciFabricArmId;
  /// Gets or sets the ARM Id of the source HyperV fabric.
  final pulumi.Input<String> hyperVFabricArmId;
  /// Gets or sets the instance type.
  /// Expected value is 'HyperVToAzStackHCI'.
  final pulumi.Input<String> instanceType;
  /// Gets or sets the storage account Id.
  final pulumi.Input<String?>? storageAccountId;
  /// Gets or sets the Sas Secret of storage account.
  final pulumi.Input<String?>? storageAccountSasSecretName;

  /// Creates a new [HyperVToAzStackHCIReplicationExtensionModelCustomProperties].
  /// [azStackHciFabricArmId] Gets or sets the ARM Id of the target AzStackHCI fabric.
  /// [hyperVFabricArmId] Gets or sets the ARM Id of the source HyperV fabric.
  /// [instanceType] Gets or sets the instance type.
  /// [storageAccountId] Gets or sets the storage account Id.
  /// [storageAccountSasSecretName] Gets or sets the Sas Secret of storage account.
  const HyperVToAzStackHCIReplicationExtensionModelCustomProperties({
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
      azStackHciFabricArmId: pulumi.Input.fromValue(map['azStackHciFabricArmId'] as String),
      hyperVFabricArmId: pulumi.Input.fromValue(map['hyperVFabricArmId'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountSasSecretName: (() { final guardedValue = map['storageAccountSasSecretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
