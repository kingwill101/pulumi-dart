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
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinations: pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkTapPropertiesDestinations>(map['destinations']!, (value) => NetworkTapPropertiesDestinations.fromMap((value as Map).cast<String, dynamic>()))),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkPacketBrokerId: pulumi.Input.fromValue(map['networkPacketBrokerId'] as String),
      networkTapName: (() { final guardedValue = map['networkTapName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pollingType: (() { final guardedValue = map['pollingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

