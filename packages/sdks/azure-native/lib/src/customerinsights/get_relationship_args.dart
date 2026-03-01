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
    required pulumi.Output<String> hubName,
    required pulumi.Output<String> relationshipName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      hubName = pulumi.Input.asInput<String>(hubName),
      relationshipName = pulumi.Input.asInput<String>(relationshipName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubName': hubName,
      'relationshipName': relationshipName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRelationshipArgs.fromMap(Map<String, dynamic> map) {
    return GetRelationshipArgs(
      hubName: pulumi.Output.create<String>(map['hubName'] as String),
      relationshipName: pulumi.Output.create<String>(map['relationshipName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

