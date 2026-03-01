// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_resource_properties.dart';

/// {@template pulumi_servicefabricmesh_network_args_doc}
/// The set of arguments for Network.
/// {@endtemplate}
/// {@macro pulumi_servicefabricmesh_network_args_doc}
class NetworkArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The identity of the network.
  final pulumi.Input<String>? networkResourceName;
  /// Describes properties of a network resource.
  final pulumi.Input<NetworkResourceProperties> properties;
  /// Azure resource group name
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkArgs].
  /// [location] The geo-location where the resource lives
  /// [networkResourceName] The identity of the network.
  /// [properties] Describes properties of a network resource.
  /// [resourceGroupName] Azure resource group name
  /// [tags] Resource tags.
  NetworkArgs({
    String? location,
    String? networkResourceName,
    required NetworkResourceProperties properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      networkResourceName = pulumi.Input.asOptionalInput<String>(networkResourceName),
      properties = pulumi.Input.asInput<NetworkResourceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'networkResourceName': ?networkResourceName,
      'properties': pulumi.Input.mapInputValue<NetworkResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NetworkArgs.fromMap(Map<String, dynamic> map) {
    return NetworkArgs(
      location: map['location'] == null ? null : map['location'] as String,
      networkResourceName: map['networkResourceName'] == null ? null : map['networkResourceName'] as String,
      properties: NetworkResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

