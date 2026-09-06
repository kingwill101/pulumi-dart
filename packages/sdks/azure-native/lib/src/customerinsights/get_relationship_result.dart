// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'property_definition_response.dart';
import 'relationship_type_mapping_response.dart';

/// Result data returned by getRelationship.
class GetRelationshipResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The Relationship Cardinality.
  final String? cardinality;
  /// Localized descriptions for the Relationship.
  final Map<String, String>? description;
  /// Localized display name for the Relationship.
  final Map<String, String>? displayName;
  /// The expiry date time in UTC.
  final String? expiryDateTimeUtc;
  /// The properties of the Relationship.
  final List<PropertyDefinitionResponse>? fields;
  /// Resource ID.
  final String? id;
  /// Optional property to be used to map fields in profile to their strong ids in related profile.
  final List<RelationshipTypeMappingResponse>? lookupMappings;
  /// Resource name.
  final String? name;
  /// Profile type.
  final String? profileType;
  /// Provisioning state.
  final String? provisioningState;
  /// Related profile being referenced.
  final String? relatedProfileType;
  /// The relationship guid id.
  final String? relationshipGuidId;
  /// The Relationship name.
  final String? relationshipName;
  /// The hub name.
  final String? tenantId;
  /// Resource type.
  final String? type;

  /// Creates a new [GetRelationshipResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cardinality] The Relationship Cardinality.
  /// [description] Localized descriptions for the Relationship.
  /// [displayName] Localized display name for the Relationship.
  /// [expiryDateTimeUtc] The expiry date time in UTC.
  /// [fields] The properties of the Relationship.
  /// [id] Resource ID.
  /// [lookupMappings] Optional property to be used to map fields in profile to their strong ids in related profile.
  /// [name] Resource name.
  /// [profileType] Profile type.
  /// [provisioningState] Provisioning state.
  /// [relatedProfileType] Related profile being referenced.
  /// [relationshipGuidId] The relationship guid id.
  /// [relationshipName] The Relationship name.
  /// [tenantId] The hub name.
  /// [type] Resource type.
  const GetRelationshipResult({
    this.azureApiVersion,
    this.cardinality,
    this.description,
    this.displayName,
    this.expiryDateTimeUtc,
    this.fields,
    this.id,
    this.lookupMappings,
    this.name,
    this.profileType,
    this.provisioningState,
    this.relatedProfileType,
    this.relationshipGuidId,
    this.relationshipName,
    this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'cardinality': ?cardinality,
      'description': ?description,
      'displayName': ?displayName,
      'expiryDateTimeUtc': ?expiryDateTimeUtc,
      'fields': ?(() { final guardedValue = fields; if (guardedValue == null) return null; return pulumi.Input.encodeList<PropertyDefinitionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'lookupMappings': ?(() { final guardedValue = lookupMappings; if (guardedValue == null) return null; return pulumi.Input.encodeList<RelationshipTypeMappingResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'profileType': ?profileType,
      'provisioningState': ?provisioningState,
      'relatedProfileType': ?relatedProfileType,
      'relationshipGuidId': ?relationshipGuidId,
      'relationshipName': ?relationshipName,
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory GetRelationshipResult.fromMap(Map<String, dynamic> map) {
    return GetRelationshipResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cardinality: (() { final guardedValue = map['cardinality']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      expiryDateTimeUtc: (() { final guardedValue = map['expiryDateTimeUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PropertyDefinitionResponse>(guardedValue, (value) => PropertyDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lookupMappings: (() { final guardedValue = map['lookupMappings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RelationshipTypeMappingResponse>(guardedValue, (value) => RelationshipTypeMappingResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      profileType: (() { final guardedValue = map['profileType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      relatedProfileType: (() { final guardedValue = map['relatedProfileType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      relationshipGuidId: (() { final guardedValue = map['relationshipGuidId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      relationshipName: (() { final guardedValue = map['relationshipName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
