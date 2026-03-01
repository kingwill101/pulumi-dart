// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_container_properties.dart';

/// AzStackHCI cluster properties.
class AzStackHCIClusterProperties {
  /// Gets or sets the AzStackHCICluster FQDN name.
  final String clusterName;
  /// Gets or sets the AzStackHCICluster resource name.
  final String resourceName;
  /// Gets or sets the Storage account name.
  final String storageAccountName;
  /// Gets or sets the list of AzStackHCICluster Storage Container.
  final List<StorageContainerProperties> storageContainers;

  /// Creates a new [AzStackHCIClusterProperties].
  /// [clusterName] Gets or sets the AzStackHCICluster FQDN name.
  /// [resourceName] Gets or sets the AzStackHCICluster resource name.
  /// [storageAccountName] Gets or sets the Storage account name.
  /// [storageContainers] Gets or sets the list of AzStackHCICluster Storage Container.
  AzStackHCIClusterProperties({
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
      'storageContainers': pulumi.Input.encodeList<StorageContainerProperties, Map<String, dynamic>>(storageContainers, (value) => value.toMap()),
    };
  }

  factory AzStackHCIClusterProperties.fromMap(Map<String, dynamic> map) {
    return AzStackHCIClusterProperties(
      clusterName: map['clusterName'] as String,
      resourceName: map['resourceName'] as String,
      storageAccountName: map['storageAccountName'] as String,
      storageContainers: pulumi.Input.decodeList<StorageContainerProperties>(map['storageContainers'], (value) => StorageContainerProperties.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

