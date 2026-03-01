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
  RelationshipArgs({
    pulumi.Output<CardinalityTypes>? cardinality,
    pulumi.Output<Map<String, String>>? description,
    pulumi.Output<Map<String, String>>? displayName,
    pulumi.Output<String>? expiryDateTimeUtc,
    pulumi.Output<List<PropertyDefinition>>? fields,
    required pulumi.Output<String> hubName,
    pulumi.Output<List<RelationshipTypeMapping>>? lookupMappings,
    required pulumi.Output<String> profileType,
    required pulumi.Output<String> relatedProfileType,
    pulumi.Output<String>? relationshipName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      cardinality = pulumi.Input.asOptionalInput<CardinalityTypes>(cardinality),
      description = pulumi.Input.asOptionalInput<Map<String, String>>(description),
      displayName = pulumi.Input.asOptionalInput<Map<String, String>>(displayName),
      expiryDateTimeUtc = pulumi.Input.asOptionalInput<String>(expiryDateTimeUtc),
      fields = pulumi.Input.asOptionalInput<List<PropertyDefinition>>(fields),
      hubName = pulumi.Input.asInput<String>(hubName),
      lookupMappings = pulumi.Input.asOptionalInput<List<RelationshipTypeMapping>>(lookupMappings),
      profileType = pulumi.Input.asInput<String>(profileType),
      relatedProfileType = pulumi.Input.asInput<String>(relatedProfileType),
      relationshipName = pulumi.Input.asOptionalInput<String>(relationshipName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cardinality': ?pulumi.Input.mapOptionalInputValue<CardinalityTypes, String>(cardinality, (value) => value.value),
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
      cardinality: map['cardinality'] == null ? null : pulumi.Output.create<CardinalityTypes>(CardinalityTypes.fromValue(map['cardinality'] as String)),
      description: map['description'] == null ? null : pulumi.Output.create<Map<String, String>>((map['description'] as Map).cast<String, String>()),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<Map<String, String>>((map['displayName'] as Map).cast<String, String>()),
      expiryDateTimeUtc: map['expiryDateTimeUtc'] == null ? null : pulumi.Output.create<String>(map['expiryDateTimeUtc'] as String),
      fields: map['fields'] == null ? null : pulumi.Output.create<List<PropertyDefinition>>(pulumi.Input.decodeList<PropertyDefinition>(map['fields'], (value) => PropertyDefinition.fromMap((value as Map).cast<String, dynamic>()))),
      hubName: pulumi.Output.create<String>(map['hubName'] as String),
      lookupMappings: map['lookupMappings'] == null ? null : pulumi.Output.create<List<RelationshipTypeMapping>>(pulumi.Input.decodeList<RelationshipTypeMapping>(map['lookupMappings'], (value) => RelationshipTypeMapping.fromMap((value as Map).cast<String, dynamic>()))),
      profileType: pulumi.Output.create<String>(map['profileType'] as String),
      relatedProfileType: pulumi.Output.create<String>(map['relatedProfileType'] as String),
      relationshipName: map['relationshipName'] == null ? null : pulumi.Output.create<String>(map['relationshipName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

