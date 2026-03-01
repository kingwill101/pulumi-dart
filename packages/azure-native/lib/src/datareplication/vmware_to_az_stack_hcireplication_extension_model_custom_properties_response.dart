// ignore_for_file: unused_element, unnecessary_cast


/// VMware to AzStackHCI Replication extension model custom properties.
class VMwareToAzStackHCIReplicationExtensionModelCustomPropertiesResponse {
  /// Gets or sets the Uri of ASR.
  final String asrServiceUri;
  /// Gets or sets the ARM Id of the target AzStackHCI fabric.
  final String azStackHciFabricArmId;
  /// Gets or sets the ARM Id of the AzStackHCI site.
  final String azStackHciSiteId;
  /// Gets or sets the Uri of Gateway.
  final String gatewayServiceUri;
  /// Gets or sets the instance type.
  /// Expected value is 'VMwareToAzStackHCI'.
  final String instanceType;
  /// Gets or sets the Uri of Rcm.
  final String rcmServiceUri;
  /// Gets or sets the resource group.
  final String resourceGroup;
  /// Gets or sets the resource location.
  final String resourceLocation;
  /// Gets or sets the gateway service Id of source.
  final String sourceGatewayServiceId;
  /// Gets or sets the source storage container name.
  final String sourceStorageContainerName;
  /// Gets or sets the storage account Id.
  final String? storageAccountId;
  /// Gets or sets the Sas Secret of storage account.
  final String? storageAccountSasSecretName;
  /// Gets or sets the subscription.
  final String subscriptionId;
  /// Gets or sets the gateway service Id of target.
  final String targetGatewayServiceId;
  /// Gets or sets the target storage container name.
  final String targetStorageContainerName;
  /// Gets or sets the ARM Id of the source VMware fabric.
  final String vmwareFabricArmId;
  /// Gets or sets the ARM Id of the VMware site.
  final String vmwareSiteId;

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
      asrServiceUri: map['asrServiceUri'] as String,
      azStackHciFabricArmId: map['azStackHciFabricArmId'] as String,
      azStackHciSiteId: map['azStackHciSiteId'] as String,
      gatewayServiceUri: map['gatewayServiceUri'] as String,
      instanceType: map['instanceType'] as String,
      rcmServiceUri: map['rcmServiceUri'] as String,
      resourceGroup: map['resourceGroup'] as String,
      resourceLocation: map['resourceLocation'] as String,
      sourceGatewayServiceId: map['sourceGatewayServiceId'] as String,
      sourceStorageContainerName: map['sourceStorageContainerName'] as String,
      storageAccountId: map['storageAccountId'] == null ? null : map['storageAccountId'] as String,
      storageAccountSasSecretName: map['storageAccountSasSecretName'] == null ? null : map['storageAccountSasSecretName'] as String,
      subscriptionId: map['subscriptionId'] as String,
      targetGatewayServiceId: map['targetGatewayServiceId'] as String,
      targetStorageContainerName: map['targetStorageContainerName'] as String,
      vmwareFabricArmId: map['vmwareFabricArmId'] as String,
      vmwareSiteId: map['vmwareSiteId'] as String,
    );
  }
}

