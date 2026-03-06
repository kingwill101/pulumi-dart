// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cardinality_types.dart';
import 'property_definition.dart';
import 'relationship_type_mapping.dart';

/// {@template pulumi_customerinsights_relationship_args_doc}
/// The set of arguments for Relationship.
/// {@endtemplate}
/// {@macro pulumi_customerinsights_relationship_args_doc}
class RelationshipArgs {
  /// The Relationship Cardinality.
  final pulumi.Input<CardinalityTypes>? cardinality;
  /// Localized descriptions for the Relationship.
  final pulumi.Input<Map<String, String>>? description;
  /// Localized display name for the Relationship.
  final pulumi.Input<Map<String, String>>? displayName;
  /// The expiry date time in UTC.
  final pulumi.Input<String>? expiryDateTimeUtc;
  /// The properties of the Relationship.
  final pulumi.Input<List<PropertyDefinition>>? fields;
  /// The name of the hub.
  final pulumi.Input<String> hubName;
  /// Optional property to be used to map fields in profile to their strong ids in related profile.
  final pulumi.Input<List<RelationshipTypeMapping>>? lookupMappings;
  /// Profile type.
  final pulumi.Input<String> profileType;
  /// Related profile being referenced.
  final pulumi.Input<String> relatedProfileType;
  /// The name of the Relationship.
  final pulumi.Input<String>? relationshipName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [RelationshipArgs].
  /// [cardinality] The Relationship Cardinality.
  /// [description] Localized descriptions for the Relationship.
  /// [displayName] Localized display name for the Relationship.
  /// [expiryDateTimeUtc] The expiry date time in UTC.
  /// [fields] The properties of the Relationship.
  /// [hubName] The name of the hub.
  /// [lookupMappings] Optional property to be used to map fields in profile to their strong ids in related profile.
  /// [profileType] Profile type.
  /// [relatedProfileType] Related profile being referenced.
  /// [relationshipName] The name of the Relationship.
  /// [resourceGroupName] The name of the resource group.
  const RelationshipArgs({
    this.cardinality,
    this.description,
    this.displayName,
    this.expiryDateTimeUtc,
    this.fields,
    required this.hubName,
    this.lookupMappings,
    required this.profileType,
    required this.relatedProfileType,
    this.relationshipName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cardinality': ?pulumi.Input.mapOptionalInputValue<CardinalityTypes, String>(cardinality, (value) => value.wireValue),
      'description': ?description,
      'displayName': ?displayName,
      'expiryDateTimeUtc': ?expiryDateTimeUtc,
      'fields': ?pulumi.Input.mapOptionalInputValue<List<PropertyDefinition>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<PropertyDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hubName': hubName,
      'lookupMappings': ?pulumi.Input.mapOptionalInputValue<List<RelationshipTypeMapping>, List<Map<String, dynamic>>>(lookupMappings, (value) => pulumi.Input.encodeList<RelationshipTypeMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'profileType': profileType,
      'relatedProfileType': relatedProfileType,
      'relationshipName': ?relationshipName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory RelationshipArgs.fromMap(Map<String, dynamic> map) {
    return RelationshipArgs(
      cardinality: (() { final guardedValue = map['cardinality']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CardinalityTypes.fromValue(guardedValue as String)); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      expiryDateTimeUtc: (() { final guardedValue = map['expiryDateTimeUtc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PropertyDefinition>(guardedValue, (value) => PropertyDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hubName: pulumi.Input.fromValue(map['hubName'] as String),
      lookupMappings: (() { final guardedValue = map['lookupMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RelationshipTypeMapping>(guardedValue, (value) => RelationshipTypeMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      profileType: pulumi.Input.fromValue(map['profileType'] as String),
      relatedProfileType: pulumi.Input.fromValue(map['relatedProfileType'] as String),
      relationshipName: (() { final guardedValue = map['relationshipName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

