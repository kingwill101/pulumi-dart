// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intents.dart';
import 'storage_networks.dart';

/// The HostNetwork of a cluster.
class HostNetwork {
  /// Optional parameter required only for 3 Nodes Switchless deployments. This allows users to specify IPs and Mask for Storage NICs when Network ATC is not assigning the IPs for storage automatically.
  final pulumi.Input<bool>? enableStorageAutoIp;
  /// The network intents assigned to the network reference pattern used for the deployment. Each intent will define its own name, traffic type, adapter names, and overrides as recommended by your OEM.
  final pulumi.Input<List<Intents>>? intents;
  /// Defines how the storage adapters between nodes are connected either switch or switch less..
  final pulumi.Input<bool>? storageConnectivitySwitchless;
  /// List of StorageNetworks config to deploy AzureStackHCI Cluster.
  final pulumi.Input<List<StorageNetworks>>? storageNetworks;

  /// Creates a new [HostNetwork].
  /// [enableStorageAutoIp] Optional parameter required only for 3 Nodes Switchless deployments. This allows users to specify IPs and Mask for Storage NICs when Network ATC is not assigning the IPs for storage automatically.
  /// [intents] The network intents assigned to the network reference pattern used for the deployment. Each intent will define its own name, traffic type, adapter names, and overrides as recommended by your OEM.
  /// [storageConnectivitySwitchless] Defines how the storage adapters between nodes are connected either switch or switch less..
  /// [storageNetworks] List of StorageNetworks config to deploy AzureStackHCI Cluster.
  HostNetwork({
    this.enableStorageAutoIp,
    this.intents,
    this.storageConnectivitySwitchless,
    this.storageNetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableStorageAutoIp': ?enableStorageAutoIp,
      'intents': ?pulumi.Input.mapOptionalInputValue<List<Intents>, List<Map<String, dynamic>>>(intents, (value) => pulumi.Input.encodeList<Intents, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageConnectivitySwitchless': ?storageConnectivitySwitchless,
      'storageNetworks': ?pulumi.Input.mapOptionalInputValue<List<StorageNetworks>, List<Map<String, dynamic>>>(storageNetworks, (value) => pulumi.Input.encodeList<StorageNetworks, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HostNetwork.fromMap(Map<String, dynamic> map) {
    return HostNetwork(
      enableStorageAutoIp: map['enableStorageAutoIp'] == null ? null : (map['enableStorageAutoIp']! as bool).input(),
      intents: map['intents'] == null ? null : (pulumi.Input.decodeList<Intents>(map['intents']!, (value) => Intents.fromMap((value as Map).cast<String, dynamic>()))).input(),
      storageConnectivitySwitchless: map['storageConnectivitySwitchless'] == null ? null : (map['storageConnectivitySwitchless']! as bool).input(),
      storageNetworks: map['storageNetworks'] == null ? null : (pulumi.Input.decodeList<StorageNetworks>(map['storageNetworks']!, (value) => StorageNetworks.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

