// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'context_properties.dart';

/// {@template pulumi_edge_context_args_doc}
/// The set of arguments for Context.
/// {@endtemplate}
/// {@macro pulumi_edge_context_args_doc}
class ContextArgs {
  /// The name of the Context.
  final pulumi.Input<String>? contextName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<ContextProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ContextArgs].
  /// [contextName] The name of the Context.
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  ContextArgs({
    pulumi.Output<String>? contextName,
    pulumi.Output<String>? location,
    pulumi.Output<ContextProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      contextName = pulumi.Input.asOptionalInput<String>(contextName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<ContextProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextName': ?contextName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<ContextProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ContextArgs.fromMap(Map<String, dynamic> map) {
    return ContextArgs(
      contextName: map['contextName'] == null ? null : pulumi.Output.create<String>(map['contextName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ContextProperties>(ContextProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

