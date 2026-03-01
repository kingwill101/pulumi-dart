// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudhealth_get_relationship_args_doc}
/// Arguments for getRelationship.
/// {@endtemplate}
/// {@macro pulumi_cloudhealth_get_relationship_args_doc}
class GetRelationshipArgs {
  /// Name of health model resource
  final pulumi.Input<String> healthModelName;
  /// Name of the relationship. Must be unique within a health model. For example, a concatenation of parentEntityName and childEntityName can be used as the name.
  final pulumi.Input<String> relationshipName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRelationshipArgs].
  /// [healthModelName] Name of health model resource
  /// [relationshipName] Name of the relationship. Must be unique within a health model. For example, a concatenation of parentEntityName and childEntityName can be used as the name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetRelationshipArgs({
    required String healthModelName,
    required String relationshipName,
    required String resourceGroupName,
  }) :
      healthModelName = pulumi.Input.asInput<String>(healthModelName),
      relationshipName = pulumi.Input.asInput<String>(relationshipName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthModelName': healthModelName,
      'relationshipName': relationshipName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRelationshipArgs.fromMap(Map<String, dynamic> map) {
    return GetRelationshipArgs(
      healthModelName: map['healthModelName'] as String,
      relationshipName: map['relationshipName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

