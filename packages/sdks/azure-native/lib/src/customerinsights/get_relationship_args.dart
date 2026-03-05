// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_customerinsights_get_relationship_args_doc}
/// Arguments for getRelationship.
/// {@endtemplate}
/// {@macro pulumi_customerinsights_get_relationship_args_doc}
class GetRelationshipArgs {
  /// The name of the hub.
  final pulumi.Input<String> hubName;
  /// The name of the relationship.
  final pulumi.Input<String> relationshipName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRelationshipArgs].
  /// [hubName] The name of the hub.
  /// [relationshipName] The name of the relationship.
  /// [resourceGroupName] The name of the resource group.
  GetRelationshipArgs({
    required this.hubName,
    required this.relationshipName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubName': hubName,
      'relationshipName': relationshipName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRelationshipArgs.fromMap(Map<String, dynamic> map) {
    return GetRelationshipArgs(
      hubName: pulumi.Input.fromValue(map['hubName'] as String),
      relationshipName: pulumi.Input.fromValue(map['relationshipName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

