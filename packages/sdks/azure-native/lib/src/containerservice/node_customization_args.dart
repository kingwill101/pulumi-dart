// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_customization_properties.dart';

/// {@template pulumi_containerservice_node_customization_args_doc}
/// The set of arguments for NodeCustomization.
/// {@endtemplate}
/// {@macro pulumi_containerservice_node_customization_args_doc}
class NodeCustomizationArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the Node Customization resource.
  final pulumi.Input<String>? nodeCustomizationName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<NodeCustomizationProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NodeCustomizationArgs].
  /// [location] The geo-location where the resource lives
  /// [nodeCustomizationName] The name of the Node Customization resource.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  NodeCustomizationArgs({
    this.location,
    this.nodeCustomizationName,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'nodeCustomizationName': ?nodeCustomizationName,
      'properties': ?pulumi.Input.mapOptionalInputValue<NodeCustomizationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NodeCustomizationArgs.fromMap(Map<String, dynamic> map) {
    return NodeCustomizationArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      nodeCustomizationName: map['nodeCustomizationName'] == null ? null : (map['nodeCustomizationName']! as String).input(),
      properties: map['properties'] == null ? null : (NodeCustomizationProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

