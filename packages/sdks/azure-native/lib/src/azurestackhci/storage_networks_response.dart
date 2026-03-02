// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_adapter_ipinfo_response.dart';

/// The StorageNetworks of a cluster.
class StorageNetworksResponse {
  /// Name of the storage network.
  final pulumi.Input<String> name;
  /// Name of the storage network adapter.
  final pulumi.Input<String> networkAdapterName;
  /// List of Storage adapter physical nodes config to deploy AzureStackHCI Cluster.
  final pulumi.Input<List<StorageAdapterIPInfoResponse>> storageAdapterIPInfo;
  /// ID specified for the VLAN storage network. This setting is applied to the network interfaces that route the storage and VM migration traffic.
  final pulumi.Input<String> storageVlanId;
  /// ID specified for the VLAN storage network. This setting is applied to the network interfaces that route the storage and VM migration traffic.
  final pulumi.Input<String>? vlanId;

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
      'storageAdapterIPInfo': pulumi.Input.mapInputValue<List<StorageAdapterIPInfoResponse>, List<Map<String, dynamic>>>(storageAdapterIPInfo, (value) => pulumi.Input.encodeList<StorageAdapterIPInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageVlanId': storageVlanId,
      'vlanId': ?vlanId,
    };
  }

  factory StorageNetworksResponse.fromMap(Map<String, dynamic> map) {
    return StorageNetworksResponse(
      name: (map['name'] as String).input(),
      networkAdapterName: (map['networkAdapterName'] as String).input(),
      storageAdapterIPInfo: (pulumi.Input.decodeList<StorageAdapterIPInfoResponse>(map['storageAdapterIPInfo'], (value) => StorageAdapterIPInfoResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      storageVlanId: (map['storageVlanId'] as String).input(),
      vlanId: map['vlanId'] == null ? null : (map['vlanId']! as String).input(),
    );
  }
}

