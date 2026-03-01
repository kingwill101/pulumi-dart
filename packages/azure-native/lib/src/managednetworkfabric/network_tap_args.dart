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
    String? annotation,
    required List<NetworkTapPropertiesDestinations> destinations,
    String? location,
    required String networkPacketBrokerId,
    String? networkTapName,
    String? pollingType,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      annotation = pulumi.Input.asOptionalInput<String>(annotation),
      destinations = pulumi.Input.asInput<List<NetworkTapPropertiesDestinations>>(destinations),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkPacketBrokerId = pulumi.Input.asInput<String>(networkPacketBrokerId),
      networkTapName = pulumi.Input.asOptionalInput<String>(networkTapName),
      pollingType = pulumi.Input.asOptionalInput<String>(pollingType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      annotation: map['annotation'] == null ? null : map['annotation'] as String,
      destinations: pulumi.Input.decodeList<NetworkTapPropertiesDestinations>(map['destinations'], (value) => NetworkTapPropertiesDestinations.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location'] as String,
      networkPacketBrokerId: map['networkPacketBrokerId'] as String,
      networkTapName: map['networkTapName'] == null ? null : map['networkTapName'] as String,
      pollingType: map['pollingType'] == null ? null : map['pollingType'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

