// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_adapter_ipinfo.dart';

/// The StorageNetworks of a cluster.
class StorageNetworks {
  /// Name of the storage network.
  final pulumi.Input<String>? name;
  /// Name of the storage network adapter.
  final pulumi.Input<String>? networkAdapterName;
  /// List of Storage adapter physical nodes config to deploy AzureStackHCI Cluster.
  final pulumi.Input<List<StorageAdapterIPInfo>>? storageAdapterIPInfo;
  /// ID specified for the VLAN storage network. This setting is applied to the network interfaces that route the storage and VM migration traffic.
  final pulumi.Input<String>? vlanId;

  /// Creates a new [StorageNetworks].
  /// [name] Name of the storage network.
  /// [networkAdapterName] Name of the storage network adapter.
  /// [storageAdapterIPInfo] List of Storage adapter physical nodes config to deploy AzureStackHCI Cluster.
  /// [vlanId] ID specified for the VLAN storage network. This setting is applied to the network interfaces that route the storage and VM migration traffic.
  const StorageNetworks({
    this.name,
    this.networkAdapterName,
    this.storageAdapterIPInfo,
    this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'networkAdapterName': ?networkAdapterName,
      'storageAdapterIPInfo': ?pulumi.Input.mapOptionalInputValue<List<StorageAdapterIPInfo>, List<Map<String, dynamic>>>(storageAdapterIPInfo, (value) => pulumi.Input.encodeList<StorageAdapterIPInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vlanId': ?vlanId,
    };
  }

  factory StorageNetworks.fromMap(Map<String, dynamic> map) {
    return StorageNetworks(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkAdapterName: (() { final guardedValue = map['networkAdapterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAdapterIPInfo: (() { final guardedValue = map['storageAdapterIPInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StorageAdapterIPInfo>(guardedValue, (value) => StorageAdapterIPInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vlanId: (() { final guardedValue = map['vlanId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
