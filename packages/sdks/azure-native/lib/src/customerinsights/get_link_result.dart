// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'participant_property_reference_response.dart';
import 'type_properties_mapping_response.dart';

/// Result data returned by getLink.
class GetLinkResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Localized descriptions for the Link.
  final Map<String, String>? description;
  /// Localized display name for the Link.
  final Map<String, String>? displayName;
  /// Resource ID.
  final String id;
  /// The link name.
  final String linkName;
  /// The set of properties mappings between the source and target Types.
  final List<TypePropertiesMappingResponse>? mappings;
  /// Resource name.
  final String name;
  /// Determines whether this link is supposed to create or delete instances if Link is NOT Reference Only.
  final String? operationType;
  /// The properties that represent the participating profile.
  final List<ParticipantPropertyReferenceResponse> participantPropertyReferences;
  /// Provisioning state.
  final String provisioningState;
  /// Indicating whether the link is reference only link. This flag is ignored if the Mappings are defined. If the mappings are not defined and it is set to true, links processing will not create or update profiles.
  final bool? referenceOnly;
  /// Type of source entity.
  final String sourceEntityType;
  /// Name of the source Entity Type.
  final String sourceEntityTypeName;
  /// Type of target entity.
  final String targetEntityType;
  /// Name of the target Entity Type.
  final String targetEntityTypeName;
  /// The hub name.
  final String tenantId;
  /// Resource type.
  final String type;

  /// Creates a new [GetLinkResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Localized descriptions for the Link.
  /// [displayName] Localized display name for the Link.
  /// [id] Resource ID.
  /// [linkName] The link name.
  /// [mappings] The set of properties mappings between the source and target Types.
  /// [name] Resource name.
  /// [operationType] Determines whether this link is supposed to create or delete instances if Link is NOT Reference Only.
  /// [participantPropertyReferences] The properties that represent the participating profile.
  /// [provisioningState] Provisioning state.
  /// [referenceOnly] Indicating whether the link is reference only link. This flag is ignored if the Mappings are defined. If the mappings are not defined and it is set to true, links processing will not create or update profiles.
  /// [sourceEntityType] Type of source entity.
  /// [sourceEntityTypeName] Name of the source Entity Type.
  /// [targetEntityType] Type of target entity.
  /// [targetEntityTypeName] Name of the target Entity Type.
  /// [tenantId] The hub name.
  /// [type] Resource type.
  const GetLinkResult({
    required this.azureApiVersion,
    this.description,
    this.displayName,
    required this.id,
    required this.linkName,
    this.mappings,
    required this.name,
    this.operationType,
    required this.participantPropertyReferences,
    required this.provisioningState,
    this.referenceOnly,
    required this.sourceEntityType,
    required this.sourceEntityTypeName,
    required this.targetEntityType,
    required this.targetEntityTypeName,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'id': id,
      'linkName': linkName,
      'mappings': ?(() { final guardedValue = mappings; if (guardedValue == null) return null; return pulumi.Input.encodeList<TypePropertiesMappingResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': name,
      'operationType': ?operationType,
      'participantPropertyReferences': pulumi.Input.encodeList<ParticipantPropertyReferenceResponse, Map<String, dynamic>>(participantPropertyReferences, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'referenceOnly': ?referenceOnly,
      'sourceEntityType': sourceEntityType,
      'sourceEntityTypeName': sourceEntityTypeName,
      'targetEntityType': targetEntityType,
      'targetEntityTypeName': targetEntityTypeName,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetLinkResult.fromMap(Map<String, dynamic> map) {
    return GetLinkResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: map['id'] as String,
      linkName: map['linkName'] as String,
      mappings: (() { final guardedValue = map['mappings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TypePropertiesMappingResponse>(guardedValue, (value) => TypePropertiesMappingResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: map['name'] as String,
      operationType: (() { final guardedValue = map['operationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      participantPropertyReferences: pulumi.Input.decodeList<ParticipantPropertyReferenceResponse>(map['participantPropertyReferences']!, (value) => ParticipantPropertyReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      referenceOnly: (() { final guardedValue = map['referenceOnly']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      sourceEntityType: map['sourceEntityType'] as String,
      sourceEntityTypeName: map['sourceEntityTypeName'] as String,
      targetEntityType: map['targetEntityType'] as String,
      targetEntityTypeName: map['targetEntityTypeName'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

