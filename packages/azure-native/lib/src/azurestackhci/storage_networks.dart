// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_adapter_ipinfo.dart';

/// The StorageNetworks of a cluster.
class StorageNetworks {
  /// Name of the storage network.
  final String? name;
  /// Name of the storage network adapter.
  final String? networkAdapterName;
  /// List of Storage adapter physical nodes config to deploy AzureStackHCI Cluster.
  final List<StorageAdapterIPInfo>? storageAdapterIPInfo;
  /// ID specified for the VLAN storage network. This setting is applied to the network interfaces that route the storage and VM migration traffic.
  final String? vlanId;

  /// Creates a new [StorageNetworks].
  /// [name] Name of the storage network.
  /// [networkAdapterName] Name of the storage network adapter.
  /// [storageAdapterIPInfo] List of Storage adapter physical nodes config to deploy AzureStackHCI Cluster.
  /// [vlanId] ID specified for the VLAN storage network. This setting is applied to the network interfaces that route the storage and VM migration traffic.
  StorageNetworks({
    this.name,
    this.networkAdapterName,
    this.storageAdapterIPInfo,
    this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'networkAdapterName': ?networkAdapterName,
      'storageAdapterIPInfo': ?storageAdapterIPInfo == null ? null : pulumi.Input.encodeList<StorageAdapterIPInfo, Map<String, dynamic>>(storageAdapterIPInfo!, (value) => value.toMap()),
      'vlanId': ?vlanId,
    };
  }

  factory StorageNetworks.fromMap(Map<String, dynamic> map) {
    return StorageNetworks(
      name: map['name'] == null ? null : map['name'] as String,
      networkAdapterName: map['networkAdapterName'] == null ? null : map['networkAdapterName'] as String,
      storageAdapterIPInfo: map['storageAdapterIPInfo'] == null ? null : pulumi.Input.decodeList<StorageAdapterIPInfo>(map['storageAdapterIPInfo'], (value) => StorageAdapterIPInfo.fromMap((value as Map).cast<String, dynamic>())),
      vlanId: map['vlanId'] == null ? null : map['vlanId'] as String,
    );
  }
}

