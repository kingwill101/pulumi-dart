// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_adapter_ipinfo_response.dart';

/// The StorageNetworks of a cluster.
class StorageNetworksResponse {
  /// Name of the storage network.
  final pulumi.Input<String?>? name;
  /// Name of the storage network adapter.
  final pulumi.Input<String?>? networkAdapterName;
  /// List of Storage adapter physical nodes config to deploy AzureStackHCI Cluster.
  final pulumi.Input<List<StorageAdapterIPInfoResponse>?>? storageAdapterIPInfo;
  /// ID specified for the VLAN storage network. This setting is applied to the network interfaces that route the storage and VM migration traffic.
  final pulumi.Input<String?>? vlanId;

  /// Creates a new [StorageNetworksResponse].
  /// [name] Name of the storage network.
  /// [networkAdapterName] Name of the storage network adapter.
  /// [storageAdapterIPInfo] List of Storage adapter physical nodes config to deploy AzureStackHCI Cluster.
  /// [vlanId] ID specified for the VLAN storage network. This setting is applied to the network interfaces that route the storage and VM migration traffic.
  const StorageNetworksResponse({
    this.name,
    this.networkAdapterName,
    this.storageAdapterIPInfo,
    this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'networkAdapterName': ?networkAdapterName,
      'storageAdapterIPInfo': ?pulumi.Input.mapOptionalInputValue<List<StorageAdapterIPInfoResponse>, List<Map<String, dynamic>>>(storageAdapterIPInfo, (value) => pulumi.Input.encodeList<StorageAdapterIPInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vlanId': ?vlanId,
    };
  }

  factory StorageNetworksResponse.fromMap(Map<String, dynamic> map) {
    return StorageNetworksResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkAdapterName: (() { final guardedValue = map['networkAdapterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAdapterIPInfo: (() { final guardedValue = map['storageAdapterIPInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StorageAdapterIPInfoResponse>(guardedValue, (value) => StorageAdapterIPInfoResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vlanId: (() { final guardedValue = map['vlanId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
