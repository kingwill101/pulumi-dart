// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VMware to AzStackHCI Replication extension model custom properties.
class VMwareToAzStackHCIReplicationExtensionModelCustomPropertiesResponse {
  /// Gets or sets the Uri of ASR.
  final pulumi.Input<String> asrServiceUri;
  /// Gets or sets the ARM Id of the target AzStackHCI fabric.
  final pulumi.Input<String> azStackHciFabricArmId;
  /// Gets or sets the ARM Id of the AzStackHCI site.
  final pulumi.Input<String> azStackHciSiteId;
  /// Gets or sets the Uri of Gateway.
  final pulumi.Input<String> gatewayServiceUri;
  /// Gets or sets the instance type.
  /// Expected value is 'VMwareToAzStackHCI'.
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
  final pulumi.Input<String>? storageAccountId;
  /// Gets or sets the Sas Secret of storage account.
  final pulumi.Input<String>? storageAccountSasSecretName;
  /// Gets or sets the subscription.
  final pulumi.Input<String> subscriptionId;
  /// Gets or sets the gateway service Id of target.
  final pulumi.Input<String> targetGatewayServiceId;
  /// Gets or sets the target storage container name.
  final pulumi.Input<String> targetStorageContainerName;
  /// Gets or sets the ARM Id of the source VMware fabric.
  final pulumi.Input<String> vmwareFabricArmId;
  /// Gets or sets the ARM Id of the VMware site.
  final pulumi.Input<String> vmwareSiteId;

  /// Creates a new [VMwareToAzStackHCIReplicationExtensionModelCustomPropertiesResponse].
  /// [asrServiceUri] Gets or sets the Uri of ASR.
  /// [azStackHciFabricArmId] Gets or sets the ARM Id of the target AzStackHCI fabric.
  /// [azStackHciSiteId] Gets or sets the ARM Id of the AzStackHCI site.
  /// [gatewayServiceUri] Gets or sets the Uri of Gateway.
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
  /// [vmwareFabricArmId] Gets or sets the ARM Id of the source VMware fabric.
  /// [vmwareSiteId] Gets or sets the ARM Id of the VMware site.
  VMwareToAzStackHCIReplicationExtensionModelCustomPropertiesResponse({
    required this.asrServiceUri,
    required this.azStackHciFabricArmId,
    required this.azStackHciSiteId,
    required this.gatewayServiceUri,
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
    required this.vmwareFabricArmId,
    required this.vmwareSiteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asrServiceUri': asrServiceUri,
      'azStackHciFabricArmId': azStackHciFabricArmId,
      'azStackHciSiteId': azStackHciSiteId,
      'gatewayServiceUri': gatewayServiceUri,
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
      'vmwareFabricArmId': vmwareFabricArmId,
      'vmwareSiteId': vmwareSiteId,
    };
  }

  factory VMwareToAzStackHCIReplicationExtensionModelCustomPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VMwareToAzStackHCIReplicationExtensionModelCustomPropertiesResponse(
      asrServiceUri: (map['asrServiceUri'] as String).input(),
      azStackHciFabricArmId: (map['azStackHciFabricArmId'] as String).input(),
      azStackHciSiteId: (map['azStackHciSiteId'] as String).input(),
      gatewayServiceUri: (map['gatewayServiceUri'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      rcmServiceUri: (map['rcmServiceUri'] as String).input(),
      resourceGroup: (map['resourceGroup'] as String).input(),
      resourceLocation: (map['resourceLocation'] as String).input(),
      sourceGatewayServiceId: (map['sourceGatewayServiceId'] as String).input(),
      sourceStorageContainerName: (map['sourceStorageContainerName'] as String).input(),
      storageAccountId: map['storageAccountId'] == null ? null : (map['storageAccountId'] as String).input(),
      storageAccountSasSecretName: map['storageAccountSasSecretName'] == null ? null : (map['storageAccountSasSecretName'] as String).input(),
      subscriptionId: (map['subscriptionId'] as String).input(),
      targetGatewayServiceId: (map['targetGatewayServiceId'] as String).input(),
      targetStorageContainerName: (map['targetStorageContainerName'] as String).input(),
      vmwareFabricArmId: (map['vmwareFabricArmId'] as String).input(),
      vmwareSiteId: (map['vmwareSiteId'] as String).input(),
    );
  }
}

