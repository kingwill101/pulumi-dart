// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'relationship_properties.dart';

/// {@template pulumi_cloudhealth_relationship_args_doc}
/// The set of arguments for Relationship.
/// {@endtemplate}
/// {@macro pulumi_cloudhealth_relationship_args_doc}
class RelationshipArgs {
  /// Name of health model resource
  final pulumi.Input<String> healthModelName;

  /// The resource-specific properties for this resource.
  final pulumi.Input<RelationshipProperties>? properties;

  /// Name of the relationship. Must be unique within a health model. For example, a concatenation of parentEntityName and childEntityName can be used as the name.
  final pulumi.Input<String>? relationshipName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [RelationshipArgs].
  /// [healthModelName] Name of health model resource
  /// [properties] The resource-specific properties for this resource.
  /// [relationshipName] Name of the relationship. Must be unique within a health model. For example, a concatenation of parentEntityName and childEntityName can be used as the name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  RelationshipArgs({
    required this.healthModelName,
    this.properties,
    this.relationshipName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthModelName': healthModelName,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            RelationshipProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'relationshipName': ?relationshipName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory RelationshipArgs.fromMap(Map<String, dynamic> map) {
    return RelationshipArgs(
      healthModelName: pulumi.Input.fromValue(map['healthModelName'] as String),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RelationshipProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      relationshipName: (() {
        final guardedValue = map['relationshipName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
