// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_container_properties.dart';

/// AzStackHCI cluster properties.
class AzStackHCIClusterProperties {
  /// Gets or sets the AzStackHCICluster FQDN name.
  final pulumi.Input<String> clusterName;

  /// Gets or sets the AzStackHCICluster resource name.
  final pulumi.Input<String> resourceName;

  /// Gets or sets the Storage account name.
  final pulumi.Input<String> storageAccountName;

  /// Gets or sets the list of AzStackHCICluster Storage Container.
  final pulumi.Input<List<StorageContainerProperties>> storageContainers;

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
      'storageContainers':
          pulumi.Input.mapInputValue<
            List<StorageContainerProperties>,
            List<Map<String, dynamic>>
          >(
            storageContainers,
            (value) =>
                pulumi.Input.encodeList<
                  StorageContainerProperties,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory AzStackHCIClusterProperties.fromMap(Map<String, dynamic> map) {
    return AzStackHCIClusterProperties(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      storageAccountName: pulumi.Input.fromValue(
        map['storageAccountName'] as String,
      ),
      storageContainers: pulumi.Input.fromValue(
        pulumi.Input.decodeList<StorageContainerProperties>(
          map['storageContainers']!,
          (value) => StorageContainerProperties.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
