// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_network_packet_broker_args_doc}
/// The set of arguments for NetworkPacketBroker.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_network_packet_broker_args_doc}
class NetworkPacketBrokerArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// ARM resource ID of the Network Fabric.
  final pulumi.Input<String> networkFabricId;
  /// Name of the Network Packet Broker.
  final pulumi.Input<String>? networkPacketBrokerName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkPacketBrokerArgs].
  /// [location] The geo-location where the resource lives
  /// [networkFabricId] ARM resource ID of the Network Fabric.
  /// [networkPacketBrokerName] Name of the Network Packet Broker.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  NetworkPacketBrokerArgs({
    pulumi.Output<String>? location,
    required pulumi.Output<String> networkFabricId,
    pulumi.Output<String>? networkPacketBrokerName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      networkFabricId = pulumi.Input.asInput<String>(networkFabricId),
      networkPacketBrokerName = pulumi.Input.asOptionalInput<String>(networkPacketBrokerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      networkFabricId: pulumi.Output.create<String>(map['networkFabricId'] as String),
      networkPacketBrokerName: map['networkPacketBrokerName'] == null ? null : pulumi.Output.create<String>(map['networkPacketBrokerName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

