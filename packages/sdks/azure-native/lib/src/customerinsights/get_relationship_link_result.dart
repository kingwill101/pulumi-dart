// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'participant_profile_property_reference_response.dart';
import 'relationship_link_field_mapping_response.dart';

/// Result data returned by getRelationshipLink.
class GetRelationshipLinkResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Localized descriptions for the Relationship Link.
  final Map<String, String>? description;
  /// Localized display name for the Relationship Link.
  final Map<String, String>? displayName;
  /// Resource ID.
  final String id;
  /// The InteractionType associated with the Relationship Link.
  final String interactionType;
  /// The name of the Relationship Link.
  final String linkName;
  /// The mappings between Interaction and Relationship fields.
  final List<RelationshipLinkFieldMappingResponse>? mappings;
  /// Resource name.
  final String name;
  /// The property references for the Profile of the Relationship.
  final List<ParticipantProfilePropertyReferenceResponse> profilePropertyReferences;
  /// Provisioning state.
  final String provisioningState;
  /// The property references for the Related Profile of the Relationship.
  final List<ParticipantProfilePropertyReferenceResponse> relatedProfilePropertyReferences;
  /// The relationship guid id.
  final String relationshipGuidId;
  /// The Relationship associated with the Link.
  final String relationshipName;
  /// The hub name.
  final String tenantId;
  /// Resource type.
  final String type;

  /// Creates a new [GetRelationshipLinkResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Localized descriptions for the Relationship Link.
  /// [displayName] Localized display name for the Relationship Link.
  /// [id] Resource ID.
  /// [interactionType] The InteractionType associated with the Relationship Link.
  /// [linkName] The name of the Relationship Link.
  /// [mappings] The mappings between Interaction and Relationship fields.
  /// [name] Resource name.
  /// [profilePropertyReferences] The property references for the Profile of the Relationship.
  /// [provisioningState] Provisioning state.
  /// [relatedProfilePropertyReferences] The property references for the Related Profile of the Relationship.
  /// [relationshipGuidId] The relationship guid id.
  /// [relationshipName] The Relationship associated with the Link.
  /// [tenantId] The hub name.
  /// [type] Resource type.
  GetRelationshipLinkResult({
    required this.azureApiVersion,
    this.description,
    this.displayName,
    required this.id,
    required this.interactionType,
    required this.linkName,
    this.mappings,
    required this.name,
    required this.profilePropertyReferences,
    required this.provisioningState,
    required this.relatedProfilePropertyReferences,
    required this.relationshipGuidId,
    required this.relationshipName,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'id': id,
      'interactionType': interactionType,
      'linkName': linkName,
      'mappings': ?(() { final guardedValue = mappings; if (guardedValue == null) return null; return pulumi.Input.encodeList<RelationshipLinkFieldMappingResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': name,
      'profilePropertyReferences': pulumi.Input.encodeList<ParticipantProfilePropertyReferenceResponse, Map<String, dynamic>>(profilePropertyReferences, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'relatedProfilePropertyReferences': pulumi.Input.encodeList<ParticipantProfilePropertyReferenceResponse, Map<String, dynamic>>(relatedProfilePropertyReferences, (value) => value.toMap()),
      'relationshipGuidId': relationshipGuidId,
      'relationshipName': relationshipName,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetRelationshipLinkResult.fromMap(Map<String, dynamic> map) {
    return GetRelationshipLinkResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: map['id'] as String,
      interactionType: map['interactionType'] as String,
      linkName: map['linkName'] as String,
      mappings: (() { final guardedValue = map['mappings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RelationshipLinkFieldMappingResponse>(guardedValue, (value) => RelationshipLinkFieldMappingResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: map['name'] as String,
      profilePropertyReferences: pulumi.Input.decodeList<ParticipantProfilePropertyReferenceResponse>(map['profilePropertyReferences']!, (value) => ParticipantProfilePropertyReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      relatedProfilePropertyReferences: pulumi.Input.decodeList<ParticipantProfilePropertyReferenceResponse>(map['relatedProfilePropertyReferences']!, (value) => ParticipantProfilePropertyReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      relationshipGuidId: map['relationshipGuidId'] as String,
      relationshipName: map['relationshipName'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

