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
    pulumi.Output<String>? location,
    pulumi.Output<String>? networkFunctionDefinitionGroupName,
    pulumi.Output<NetworkFunctionDefinitionGroupPropertiesFormat>? properties,
    required pulumi.Output<String> publisherName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      networkFunctionDefinitionGroupName = pulumi.Input.asOptionalInput<String>(networkFunctionDefinitionGroupName),
      properties = pulumi.Input.asOptionalInput<NetworkFunctionDefinitionGroupPropertiesFormat>(properties),
      publisherName = pulumi.Input.asInput<String>(publisherName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      networkFunctionDefinitionGroupName: map['networkFunctionDefinitionGroupName'] == null ? null : pulumi.Output.create<String>(map['networkFunctionDefinitionGroupName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<NetworkFunctionDefinitionGroupPropertiesFormat>(NetworkFunctionDefinitionGroupPropertiesFormat.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      publisherName: pulumi.Output.create<String>(map['publisherName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

