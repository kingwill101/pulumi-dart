// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_adapter_ipinfo_response.dart';

/// The StorageNetworks of a cluster.
class StorageNetworksResponse {
  /// Name of the storage network.
  final String name;
  /// Name of the storage network adapter.
  final String networkAdapterName;
  /// List of Storage adapter physical nodes config to deploy AzureStackHCI Cluster.
  final List<StorageAdapterIPInfoResponse> storageAdapterIPInfo;
  /// ID specified for the VLAN storage network. This setting is applied to the network interfaces that route the storage and VM migration traffic.
  final String storageVlanId;
  /// ID specified for the VLAN storage network. This setting is applied to the network interfaces that route the storage and VM migration traffic.
  final String? vlanId;

  /// Creates a new [StorageNetworksResponse].
  /// [name] Name of the storage network.
  /// [networkAdapterName] Name of the storage network adapter.
  /// [storageAdapterIPInfo] List of Storage adapter physical nodes config to deploy AzureStackHCI Cluster.
  /// [storageVlanId] ID specified for the VLAN storage network. This setting is applied to the network interfaces that route the storage and VM migration traffic.
  /// [vlanId] ID specified for the VLAN storage network. This setting is applied to the network interfaces that route the storage and VM migration traffic.
  StorageNetworksResponse({
    required this.name,
    required this.networkAdapterName,
    required this.storageAdapterIPInfo,
    required this.storageVlanId,
    this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'networkAdapterName': networkAdapterName,
      'storageAdapterIPInfo': pulumi.Input.encodeList<StorageAdapterIPInfoResponse, Map<String, dynamic>>(storageAdapterIPInfo, (value) => value.toMap()),
      'storageVlanId': storageVlanId,
      'vlanId': ?vlanId,
    };
  }

  factory StorageNetworksResponse.fromMap(Map<String, dynamic> map) {
    return StorageNetworksResponse(
      name: map['name'] as String,
      networkAdapterName: map['networkAdapterName'] as String,
      storageAdapterIPInfo: pulumi.Input.decodeList<StorageAdapterIPInfoResponse>(map['storageAdapterIPInfo'], (value) => StorageAdapterIPInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      storageVlanId: map['storageVlanId'] as String,
      vlanId: map['vlanId'] == null ? null : map['vlanId'] as String,
    );
  }
}

