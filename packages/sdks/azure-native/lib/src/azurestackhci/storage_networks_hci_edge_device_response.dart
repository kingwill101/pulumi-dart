// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_adapter_ipinfo_hci_edge_device_response.dart';

/// The StorageNetworks of a cluster.
class StorageNetworksHciEdgeDeviceResponse {
  /// Name of the storage network.
  final pulumi.Input<String> name;
  /// Name of the storage network adapter.
  final pulumi.Input<String> networkAdapterName;
  /// List of Storage adapter physical nodes config to deploy AzureStackHCI Cluster.
  final pulumi.Input<List<StorageAdapterIPInfoHciEdgeDeviceResponse>> storageAdapterIPInfo;
  /// ID specified for the VLAN storage network. This setting is applied to the network interfaces that route the storage and VM migration traffic.
  final pulumi.Input<String> storageVlanId;

  /// Creates a new [StorageNetworksHciEdgeDeviceResponse].
  /// [name] Name of the storage network.
  /// [networkAdapterName] Name of the storage network adapter.
  /// [storageAdapterIPInfo] List of Storage adapter physical nodes config to deploy AzureStackHCI Cluster.
  /// [storageVlanId] ID specified for the VLAN storage network. This setting is applied to the network interfaces that route the storage and VM migration traffic.
  const StorageNetworksHciEdgeDeviceResponse({
    required this.name,
    required this.networkAdapterName,
    required this.storageAdapterIPInfo,
    required this.storageVlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'networkAdapterName': networkAdapterName,
      'storageAdapterIPInfo': pulumi.Input.mapInputValue<List<StorageAdapterIPInfoHciEdgeDeviceResponse>, List<Map<String, dynamic>>>(storageAdapterIPInfo, (value) => pulumi.Input.encodeList<StorageAdapterIPInfoHciEdgeDeviceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageVlanId': storageVlanId,
    };
  }

  factory StorageNetworksHciEdgeDeviceResponse.fromMap(Map<String, dynamic> map) {
    return StorageNetworksHciEdgeDeviceResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      networkAdapterName: pulumi.Input.fromValue(map['networkAdapterName'] as String),
      storageAdapterIPInfo: pulumi.Input.fromValue(pulumi.Input.decodeList<StorageAdapterIPInfoHciEdgeDeviceResponse>(map['storageAdapterIPInfo']!, (value) => StorageAdapterIPInfoHciEdgeDeviceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      storageVlanId: pulumi.Input.fromValue(map['storageVlanId'] as String),
    );
  }
}
