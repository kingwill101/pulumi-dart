// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'context_properties.dart';

/// {@template pulumi_edge_context_args_doc}
/// The set of arguments for Context.
/// {@endtemplate}
/// {@macro pulumi_edge_context_args_doc}
class ContextArgs {
  /// The name of the Context.
  final pulumi.Input<String?>? contextName;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<ContextProperties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ContextArgs].
  /// [contextName] The name of the Context.
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const ContextArgs({
    this.contextName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

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
      contextName: (() { final guardedValue = map['contextName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContextProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
