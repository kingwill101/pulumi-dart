// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_container_properties_response.dart';

/// AzStackHCI cluster properties.
class AzStackHCIClusterPropertiesResponse {
  /// Gets or sets the AzStackHCICluster FQDN name.
  final pulumi.Input<String> clusterName;
  /// Gets or sets the AzStackHCICluster resource name.
  final pulumi.Input<String> resourceName;
  /// Gets or sets the Storage account name.
  final pulumi.Input<String> storageAccountName;
  /// Gets or sets the list of AzStackHCICluster Storage Container.
  final pulumi.Input<List<StorageContainerPropertiesResponse>> storageContainers;

  /// Creates a new [AzStackHCIClusterPropertiesResponse].
  /// [clusterName] Gets or sets the AzStackHCICluster FQDN name.
  /// [resourceName] Gets or sets the AzStackHCICluster resource name.
  /// [storageAccountName] Gets or sets the Storage account name.
  /// [storageContainers] Gets or sets the list of AzStackHCICluster Storage Container.
  AzStackHCIClusterPropertiesResponse({
    required this.clusterName,
    required this.resourceName,
    required this.storageAccountName,
    required this.storageContainers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'resourceName': resourceName,
      'storageAccountName': storageAccountName,
      'storageContainers': pulumi.Input.mapInputValue<List<StorageContainerPropertiesResponse>, List<Map<String, dynamic>>>(storageContainers, (value) => pulumi.Input.encodeList<StorageContainerPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AzStackHCIClusterPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AzStackHCIClusterPropertiesResponse(
      clusterName: (map['clusterName'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
      storageAccountName: (map['storageAccountName'] as String).input(),
      storageContainers: (pulumi.Input.decodeList<StorageContainerPropertiesResponse>(map['storageContainers'], (value) => StorageContainerPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

