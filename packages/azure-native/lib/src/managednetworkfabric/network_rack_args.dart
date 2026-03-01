// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_network_rack_args_doc}
/// The set of arguments for NetworkRack.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_network_rack_args_doc}
class NetworkRackArgs {
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// ARM resource ID of the Network Fabric.
  final pulumi.Input<String> networkFabricId;
  /// Name of the Network Rack.
  final pulumi.Input<String>? networkRackName;
  /// Network Rack SKU name.
  final pulumi.Input<String>? networkRackType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkRackArgs].
  /// [annotation] Switch configuration description.
  /// [location] The geo-location where the resource lives
  /// [networkFabricId] ARM resource ID of the Network Fabric.
  /// [networkRackName] Name of the Network Rack.
  /// [networkRackType] Network Rack SKU name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  NetworkRackArgs({
    String? annotation,
    String? location,
    required String networkFabricId,
    String? networkRackName,
    String? networkRackType,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      annotation = pulumi.Input.asOptionalInput<String>(annotation),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkFabricId = pulumi.Input.asInput<String>(networkFabricId),
      networkRackName = pulumi.Input.asOptionalInput<String>(networkRackName),
      networkRackType = pulumi.Input.asOptionalInput<String>(networkRackType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'location': ?location,
      'networkFabricId': networkFabricId,
      'networkRackName': ?networkRackName,
      'networkRackType': ?networkRackType,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NetworkRackArgs.fromMap(Map<String, dynamic> map) {
    return NetworkRackArgs(
      annotation: map['annotation'] == null ? null : map['annotation'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      networkFabricId: map['networkFabricId'] as String,
      networkRackName: map['networkRackName'] == null ? null : map['networkRackName'] as String,
      networkRackType: map['networkRackType'] == null ? null : map['networkRackType'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

