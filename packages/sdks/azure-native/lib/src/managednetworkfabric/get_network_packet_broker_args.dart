// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_get_network_packet_broker_args_doc}
/// Arguments for getNetworkPacketBroker.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_get_network_packet_broker_args_doc}
class GetNetworkPacketBrokerArgs {
  /// Name of the Network Packet Broker.
  final pulumi.Input<String> networkPacketBrokerName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkPacketBrokerArgs].
  /// [networkPacketBrokerName] Name of the Network Packet Broker.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNetworkPacketBrokerArgs({
    required this.networkPacketBrokerName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkPacketBrokerName': networkPacketBrokerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkPacketBrokerArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkPacketBrokerArgs(
      networkPacketBrokerName: pulumi.Input.fromValue(
        map['networkPacketBrokerName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
