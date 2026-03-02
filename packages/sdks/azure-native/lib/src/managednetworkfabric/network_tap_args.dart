// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_tap_properties_destinations.dart';

/// {@template pulumi_managednetworkfabric_network_tap_args_doc}
/// The set of arguments for NetworkTap.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_network_tap_args_doc}
class NetworkTapArgs {
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;
  /// List of destinations to send the filter traffic.
  final pulumi.Input<List<NetworkTapPropertiesDestinations>> destinations;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// ARM resource ID of the Network Packet Broker.
  final pulumi.Input<String> networkPacketBrokerId;
  /// Name of the Network Tap.
  final pulumi.Input<String>? networkTapName;
  /// Polling type.
  final pulumi.Input<String>? pollingType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkTapArgs].
  /// [annotation] Switch configuration description.
  /// [destinations] List of destinations to send the filter traffic.
  /// [location] The geo-location where the resource lives
  /// [networkPacketBrokerId] ARM resource ID of the Network Packet Broker.
  /// [networkTapName] Name of the Network Tap.
  /// [pollingType] Polling type.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  NetworkTapArgs({
    this.annotation,
    required this.destinations,
    this.location,
    required this.networkPacketBrokerId,
    this.networkTapName,
    this.pollingType,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'destinations': pulumi.Input.mapInputValue<List<NetworkTapPropertiesDestinations>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<NetworkTapPropertiesDestinations, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'networkPacketBrokerId': networkPacketBrokerId,
      'networkTapName': ?networkTapName,
      'pollingType': ?pollingType,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NetworkTapArgs.fromMap(Map<String, dynamic> map) {
    return NetworkTapArgs(
      annotation: map['annotation'] == null ? null : (map['annotation'] as String).input(),
      destinations: (pulumi.Input.decodeList<NetworkTapPropertiesDestinations>(map['destinations'], (value) => NetworkTapPropertiesDestinations.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      networkPacketBrokerId: (map['networkPacketBrokerId'] as String).input(),
      networkTapName: map['networkTapName'] == null ? null : (map['networkTapName'] as String).input(),
      pollingType: map['pollingType'] == null ? null : (map['pollingType'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

