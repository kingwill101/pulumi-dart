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
    required this.hubName,
    required this.relationshipLinkName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubName': hubName,
      'relationshipLinkName': relationshipLinkName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRelationshipLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetRelationshipLinkArgs(
      hubName: (map['hubName'] as String).input(),
      relationshipLinkName: (map['relationshipLinkName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

