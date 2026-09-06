// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_network_packet_broker_args_doc}
/// The set of arguments for NetworkPacketBroker.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_network_packet_broker_args_doc}
class NetworkPacketBrokerArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// ARM resource ID of the Network Fabric.
  final pulumi.Input<String> networkFabricId;
  /// Name of the Network Packet Broker.
  final pulumi.Input<String?>? networkPacketBrokerName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [NetworkPacketBrokerArgs].
  /// [location] The geo-location where the resource lives
  /// [networkFabricId] ARM resource ID of the Network Fabric.
  /// [networkPacketBrokerName] Name of the Network Packet Broker.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const NetworkPacketBrokerArgs({
    this.location,
    required this.networkFabricId,
    this.networkPacketBrokerName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'networkFabricId': networkFabricId,
      'networkPacketBrokerName': ?networkPacketBrokerName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NetworkPacketBrokerArgs.fromMap(Map<String, dynamic> map) {
    return NetworkPacketBrokerArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkFabricId: pulumi.Input.fromValue(map['networkFabricId'] as String),
      networkPacketBrokerName: (() { final guardedValue = map['networkPacketBrokerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
