// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HyperV to AzStackHCI Replication extension model custom properties.
class HyperVToAzStackHCIReplicationExtensionModelCustomPropertiesResponse {
  /// Gets or sets the Uri of ASR.
  final pulumi.Input<String> asrServiceUri;
  /// Gets or sets the ARM Id of the target AzStackHCI fabric.
  final pulumi.Input<String> azStackHciFabricArmId;
  /// Gets or sets the ARM Id of the AzStackHCI site.
  final pulumi.Input<String> azStackHciSiteId;
  /// Gets or sets the Uri of Gateway.
  final pulumi.Input<String> gatewayServiceUri;
  /// Gets or sets the ARM Id of the source HyperV fabric.
  final pulumi.Input<String> hyperVFabricArmId;
  /// Gets or sets the ARM Id of the HyperV site.
  final pulumi.Input<String> hyperVSiteId;
  /// Gets or sets the instance type.
  /// Expected value is 'HyperVToAzStackHCI'.
  final pulumi.Input<String> instanceType;
  /// Gets or sets the Uri of Rcm.
  final pulumi.Input<String> rcmServiceUri;
  /// Gets or sets the resource group.
  final pulumi.Input<String> resourceGroup;
  /// Gets or sets the resource location.
  final pulumi.Input<String> resourceLocation;
  /// Gets or sets the gateway service Id of source.
  final pulumi.Input<String> sourceGatewayServiceId;
  /// Gets or sets the source storage container name.
  final pulumi.Input<String> sourceStorageContainerName;
  /// Gets or sets the storage account Id.
  final pulumi.Input<String?>? storageAccountId;
  /// Gets or sets the Sas Secret of storage account.
  final pulumi.Input<String?>? storageAccountSasSecretName;
  /// Gets or sets the subscription.
  final pulumi.Input<String> subscriptionId;
  /// Gets or sets the gateway service Id of target.
  final pulumi.Input<String> targetGatewayServiceId;
  /// Gets or sets the target storage container name.
  final pulumi.Input<String> targetStorageContainerName;

  /// Creates a new [HyperVToAzStackHCIReplicationExtensionModelCustomPropertiesResponse].
  /// [asrServiceUri] Gets or sets the Uri of ASR.
  /// [azStackHciFabricArmId] Gets or sets the ARM Id of the target AzStackHCI fabric.
  /// [azStackHciSiteId] Gets or sets the ARM Id of the AzStackHCI site.
  /// [gatewayServiceUri] Gets or sets the Uri of Gateway.
  /// [hyperVFabricArmId] Gets or sets the ARM Id of the source HyperV fabric.
  /// [hyperVSiteId] Gets or sets the ARM Id of the HyperV site.
  /// [instanceType] Gets or sets the instance type.
  /// [rcmServiceUri] Gets or sets the Uri of Rcm.
  /// [resourceGroup] Gets or sets the resource group.
  /// [resourceLocation] Gets or sets the resource location.
  /// [sourceGatewayServiceId] Gets or sets the gateway service Id of source.
  /// [sourceStorageContainerName] Gets or sets the source storage container name.
  /// [storageAccountId] Gets or sets the storage account Id.
  /// [storageAccountSasSecretName] Gets or sets the Sas Secret of storage account.
  /// [subscriptionId] Gets or sets the subscription.
  /// [targetGatewayServiceId] Gets or sets the gateway service Id of target.
  /// [targetStorageContainerName] Gets or sets the target storage container name.
  const HyperVToAzStackHCIReplicationExtensionModelCustomPropertiesResponse({
    required this.asrServiceUri,
    required this.azStackHciFabricArmId,
    required this.azStackHciSiteId,
    required this.gatewayServiceUri,
    required this.hyperVFabricArmId,
    required this.hyperVSiteId,
    required this.instanceType,
    required this.rcmServiceUri,
    required this.resourceGroup,
    required this.resourceLocation,
    required this.sourceGatewayServiceId,
    required this.sourceStorageContainerName,
    this.storageAccountId,
    this.storageAccountSasSecretName,
    required this.subscriptionId,
    required this.targetGatewayServiceId,
    required this.targetStorageContainerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asrServiceUri': asrServiceUri,
      'azStackHciFabricArmId': azStackHciFabricArmId,
      'azStackHciSiteId': azStackHciSiteId,
      'gatewayServiceUri': gatewayServiceUri,
      'hyperVFabricArmId': hyperVFabricArmId,
      'hyperVSiteId': hyperVSiteId,
      'instanceType': instanceType,
      'rcmServiceUri': rcmServiceUri,
      'resourceGroup': resourceGroup,
      'resourceLocation': resourceLocation,
      'sourceGatewayServiceId': sourceGatewayServiceId,
      'sourceStorageContainerName': sourceStorageContainerName,
      'storageAccountId': ?storageAccountId,
      'storageAccountSasSecretName': ?storageAccountSasSecretName,
      'subscriptionId': subscriptionId,
      'targetGatewayServiceId': targetGatewayServiceId,
      'targetStorageContainerName': targetStorageContainerName,
    };
  }

  factory HyperVToAzStackHCIReplicationExtensionModelCustomPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HyperVToAzStackHCIReplicationExtensionModelCustomPropertiesResponse(
      asrServiceUri: pulumi.Input.fromValue(map['asrServiceUri'] as String),
      azStackHciFabricArmId: pulumi.Input.fromValue(map['azStackHciFabricArmId'] as String),
      azStackHciSiteId: pulumi.Input.fromValue(map['azStackHciSiteId'] as String),
      gatewayServiceUri: pulumi.Input.fromValue(map['gatewayServiceUri'] as String),
      hyperVFabricArmId: pulumi.Input.fromValue(map['hyperVFabricArmId'] as String),
      hyperVSiteId: pulumi.Input.fromValue(map['hyperVSiteId'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      rcmServiceUri: pulumi.Input.fromValue(map['rcmServiceUri'] as String),
      resourceGroup: pulumi.Input.fromValue(map['resourceGroup'] as String),
      resourceLocation: pulumi.Input.fromValue(map['resourceLocation'] as String),
      sourceGatewayServiceId: pulumi.Input.fromValue(map['sourceGatewayServiceId'] as String),
      sourceStorageContainerName: pulumi.Input.fromValue(map['sourceStorageContainerName'] as String),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountSasSecretName: (() { final guardedValue = map['storageAccountSasSecretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId'] as String),
      targetGatewayServiceId: pulumi.Input.fromValue(map['targetGatewayServiceId'] as String),
      targetStorageContainerName: pulumi.Input.fromValue(map['targetStorageContainerName'] as String),
    );
  }
}
