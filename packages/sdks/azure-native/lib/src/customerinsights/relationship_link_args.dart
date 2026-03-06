// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'participant_profile_property_reference.dart';
import 'relationship_link_field_mapping.dart';

/// {@template pulumi_customerinsights_relationship_link_args_doc}
/// The set of arguments for RelationshipLink.
/// {@endtemplate}
/// {@macro pulumi_customerinsights_relationship_link_args_doc}
class RelationshipLinkArgs {
  /// Localized descriptions for the Relationship Link.
  final pulumi.Input<Map<String, String>>? description;
  /// Localized display name for the Relationship Link.
  final pulumi.Input<Map<String, String>>? displayName;
  /// The name of the hub.
  final pulumi.Input<String> hubName;
  /// The InteractionType associated with the Relationship Link.
  final pulumi.Input<String> interactionType;
  /// The mappings between Interaction and Relationship fields.
  final pulumi.Input<List<RelationshipLinkFieldMapping>>? mappings;
  /// The property references for the Profile of the Relationship.
  final pulumi.Input<List<ParticipantProfilePropertyReference>> profilePropertyReferences;
  /// The property references for the Related Profile of the Relationship.
  final pulumi.Input<List<ParticipantProfilePropertyReference>> relatedProfilePropertyReferences;
  /// The name of the relationship link.
  final pulumi.Input<String>? relationshipLinkName;
  /// The Relationship associated with the Link.
  final pulumi.Input<String> relationshipName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [RelationshipLinkArgs].
  /// [description] Localized descriptions for the Relationship Link.
  /// [displayName] Localized display name for the Relationship Link.
  /// [hubName] The name of the hub.
  /// [interactionType] The InteractionType associated with the Relationship Link.
  /// [mappings] The mappings between Interaction and Relationship fields.
  /// [profilePropertyReferences] The property references for the Profile of the Relationship.
  /// [relatedProfilePropertyReferences] The property references for the Related Profile of the Relationship.
  /// [relationshipLinkName] The name of the relationship link.
  /// [relationshipName] The Relationship associated with the Link.
  /// [resourceGroupName] The name of the resource group.
  const RelationshipLinkArgs({
    this.description,
    this.displayName,
    required this.hubName,
    required this.interactionType,
    this.mappings,
    required this.profilePropertyReferences,
    required this.relatedProfilePropertyReferences,
    this.relationshipLinkName,
    required this.relationshipName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'hubName': hubName,
      'interactionType': interactionType,
      'mappings': ?pulumi.Input.mapOptionalInputValue<List<RelationshipLinkFieldMapping>, List<Map<String, dynamic>>>(mappings, (value) => pulumi.Input.encodeList<RelationshipLinkFieldMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'profilePropertyReferences': pulumi.Input.mapInputValue<List<ParticipantProfilePropertyReference>, List<Map<String, dynamic>>>(profilePropertyReferences, (value) => pulumi.Input.encodeList<ParticipantProfilePropertyReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'relatedProfilePropertyReferences': pulumi.Input.mapInputValue<List<ParticipantProfilePropertyReference>, List<Map<String, dynamic>>>(relatedProfilePropertyReferences, (value) => pulumi.Input.encodeList<ParticipantProfilePropertyReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'relationshipLinkName': ?relationshipLinkName,
      'relationshipName': relationshipName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory RelationshipLinkArgs.fromMap(Map<String, dynamic> map) {
    return RelationshipLinkArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      hubName: pulumi.Input.fromValue(map['hubName'] as String),
      interactionType: pulumi.Input.fromValue(map['interactionType'] as String),
      mappings: (() { final guardedValue = map['mappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RelationshipLinkFieldMapping>(guardedValue, (value) => RelationshipLinkFieldMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      profilePropertyReferences: pulumi.Input.fromValue(pulumi.Input.decodeList<ParticipantProfilePropertyReference>(map['profilePropertyReferences']!, (value) => ParticipantProfilePropertyReference.fromMap((value as Map).cast<String, dynamic>()))),
      relatedProfilePropertyReferences: pulumi.Input.fromValue(pulumi.Input.decodeList<ParticipantProfilePropertyReference>(map['relatedProfilePropertyReferences']!, (value) => ParticipantProfilePropertyReference.fromMap((value as Map).cast<String, dynamic>()))),
      relationshipLinkName: (() { final guardedValue = map['relationshipLinkName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relationshipName: pulumi.Input.fromValue(map['relationshipName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

