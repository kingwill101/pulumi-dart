// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_container_properties_response.dart';

/// AzStackHCI cluster properties.
class AzStackHCIClusterPropertiesResponse {
  /// Gets or sets the AzStackHCICluster FQDN name.
  final String clusterName;
  /// Gets or sets the AzStackHCICluster resource name.
  final String resourceName;
  /// Gets or sets the Storage account name.
  final String storageAccountName;
  /// Gets or sets the list of AzStackHCICluster Storage Container.
  final List<StorageContainerPropertiesResponse> storageContainers;

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
      'storageContainers': pulumi.Input.encodeList<StorageContainerPropertiesResponse, Map<String, dynamic>>(storageContainers, (value) => value.toMap()),
    };
  }

  factory AzStackHCIClusterPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AzStackHCIClusterPropertiesResponse(
      clusterName: map['clusterName'] as String,
      resourceName: map['resourceName'] as String,
      storageAccountName: map['storageAccountName'] as String,
      storageContainers: pulumi.Input.decodeList<StorageContainerPropertiesResponse>(map['storageContainers'], (value) => StorageContainerPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

