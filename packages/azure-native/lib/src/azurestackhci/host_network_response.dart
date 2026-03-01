// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intents_response.dart';
import 'storage_networks_response.dart';

/// The HostNetwork of a cluster.
class HostNetworkResponse {
  /// Optional parameter required only for 3 Nodes Switchless deployments. This allows users to specify IPs and Mask for Storage NICs when Network ATC is not assigning the IPs for storage automatically.
  final bool enableStorageAutoIp;
  /// The network intents assigned to the network reference pattern used for the deployment. Each intent will define its own name, traffic type, adapter names, and overrides as recommended by your OEM.
  final List<IntentsResponse> intents;
  /// Defines how the storage adapters between nodes are connected either switch or switch less.
  final bool storageConnectivitySwitchless;
  /// List of StorageNetworks config to deploy AzureStackHCI Cluster.
  final List<StorageNetworksResponse> storageNetworks;

  /// Creates a new [HostNetworkResponse].
  /// [enableStorageAutoIp] Optional parameter required only for 3 Nodes Switchless deployments. This allows users to specify IPs and Mask for Storage NICs when Network ATC is not assigning the IPs for storage automatically.
  /// [intents] The network intents assigned to the network reference pattern used for the deployment. Each intent will define its own name, traffic type, adapter names, and overrides as recommended by your OEM.
  /// [storageConnectivitySwitchless] Defines how the storage adapters between nodes are connected either switch or switch less.
  /// [storageNetworks] List of StorageNetworks config to deploy AzureStackHCI Cluster.
  HostNetworkResponse({
    required this.enableStorageAutoIp,
    required this.intents,
    required this.storageConnectivitySwitchless,
    required this.storageNetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableStorageAutoIp': enableStorageAutoIp,
      'intents': pulumi.Input.encodeList<IntentsResponse, Map<String, dynamic>>(intents, (value) => value.toMap()),
      'storageConnectivitySwitchless': storageConnectivitySwitchless,
      'storageNetworks': pulumi.Input.encodeList<StorageNetworksResponse, Map<String, dynamic>>(storageNetworks, (value) => value.toMap()),
    };
  }

  factory HostNetworkResponse.fromMap(Map<String, dynamic> map) {
    return HostNetworkResponse(
      enableStorageAutoIp: map['enableStorageAutoIp'] as bool,
      intents: pulumi.Input.decodeList<IntentsResponse>(map['intents'], (value) => IntentsResponse.fromMap((value as Map).cast<String, dynamic>())),
      storageConnectivitySwitchless: map['storageConnectivitySwitchless'] as bool,
      storageNetworks: pulumi.Input.decodeList<StorageNetworksResponse>(map['storageNetworks'], (value) => StorageNetworksResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

