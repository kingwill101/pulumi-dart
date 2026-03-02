// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_function_definition_group_properties_format.dart';

/// {@template pulumi_hybridnetwork_network_function_definition_group_args_doc}
/// The set of arguments for NetworkFunctionDefinitionGroup.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_network_function_definition_group_args_doc}
class NetworkFunctionDefinitionGroupArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the network function definition group.
  final pulumi.Input<String>? networkFunctionDefinitionGroupName;
  /// Network function definition group properties.
  final pulumi.Input<NetworkFunctionDefinitionGroupPropertiesFormat>? properties;
  /// The name of the publisher.
  final pulumi.Input<String> publisherName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkFunctionDefinitionGroupArgs].
  /// [location] The geo-location where the resource lives
  /// [networkFunctionDefinitionGroupName] The name of the network function definition group.
  /// [properties] Network function definition group properties.
  /// [publisherName] The name of the publisher.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  NetworkFunctionDefinitionGroupArgs({
    this.location,
    this.networkFunctionDefinitionGroupName,
    this.properties,
    required this.publisherName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'networkFunctionDefinitionGroupName': ?networkFunctionDefinitionGroupName,
      'properties': ?pulumi.Input.mapOptionalInputValue<NetworkFunctionDefinitionGroupPropertiesFormat, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'publisherName': publisherName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NetworkFunctionDefinitionGroupArgs.fromMap(Map<String, dynamic> map) {
    return NetworkFunctionDefinitionGroupArgs(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      networkFunctionDefinitionGroupName: map['networkFunctionDefinitionGroupName'] == null ? null : (map['networkFunctionDefinitionGroupName'] as String).input(),
      properties: map['properties'] == null ? null : (NetworkFunctionDefinitionGroupPropertiesFormat.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      publisherName: (map['publisherName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

