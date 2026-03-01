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
    required pulumi.Output<String> healthModelName,
    pulumi.Output<RelationshipProperties>? properties,
    pulumi.Output<String>? relationshipName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      healthModelName = pulumi.Input.asInput<String>(healthModelName),
      properties = pulumi.Input.asOptionalInput<RelationshipProperties>(properties),
      relationshipName = pulumi.Input.asOptionalInput<String>(relationshipName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthModelName': healthModelName,
      'properties': ?pulumi.Input.mapOptionalInputValue<RelationshipProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'relationshipName': ?relationshipName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory RelationshipArgs.fromMap(Map<String, dynamic> map) {
    return RelationshipArgs(
      healthModelName: pulumi.Output.create<String>(map['healthModelName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<RelationshipProperties>(RelationshipProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      relationshipName: map['relationshipName'] == null ? null : pulumi.Output.create<String>(map['relationshipName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

