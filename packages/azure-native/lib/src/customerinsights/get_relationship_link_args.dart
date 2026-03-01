// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_customerinsights_get_relationship_link_args_doc}
/// Arguments for getRelationshipLink.
/// {@endtemplate}
/// {@macro pulumi_customerinsights_get_relationship_link_args_doc}
class GetRelationshipLinkArgs {
  /// The name of the hub.
  final pulumi.Input<String> hubName;
  /// The name of the relationship link.
  final pulumi.Input<String> relationshipLinkName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRelationshipLinkArgs].
  /// [hubName] The name of the hub.
  /// [relationshipLinkName] The name of the relationship link.
  /// [resourceGroupName] The name of the resource group.
  GetRelationshipLinkArgs({
    required String hubName,
    required String relationshipLinkName,
    required String resourceGroupName,
  }) :
      hubName = pulumi.Input.asInput<String>(hubName),
      relationshipLinkName = pulumi.Input.asInput<String>(relationshipLinkName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubName': hubName,
      'relationshipLinkName': relationshipLinkName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRelationshipLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetRelationshipLinkArgs(
      hubName: map['hubName'] as String,
      relationshipLinkName: map['relationshipLinkName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

