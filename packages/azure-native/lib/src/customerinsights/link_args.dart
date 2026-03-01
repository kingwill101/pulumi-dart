// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_type.dart';
import 'instance_operation_type.dart';
import 'participant_property_reference.dart';
import 'type_properties_mapping.dart';

/// {@template pulumi_customerinsights_link_args_doc}
/// The set of arguments for Link.
/// {@endtemplate}
/// {@macro pulumi_customerinsights_link_args_doc}
class LinkArgs {
  /// Localized descriptions for the Link.
  final pulumi.Input<Map<String, String>>? description;
  /// Localized display name for the Link.
  final pulumi.Input<Map<String, String>>? displayName;
  /// The name of the hub.
  final pulumi.Input<String> hubName;
  /// The name of the link.
  final pulumi.Input<String>? linkName;
  /// The set of properties mappings between the source and target Types.
  final pulumi.Input<List<TypePropertiesMapping>>? mappings;
  /// Determines whether this link is supposed to create or delete instances if Link is NOT Reference Only.
  final pulumi.Input<InstanceOperationType>? operationType;
  /// The properties that represent the participating profile.
  final pulumi.Input<List<ParticipantPropertyReference>> participantPropertyReferences;
  /// Indicating whether the link is reference only link. This flag is ignored if the Mappings are defined. If the mappings are not defined and it is set to true, links processing will not create or update profiles.
  final pulumi.Input<bool>? referenceOnly;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Type of source entity.
  final pulumi.Input<EntityType> sourceEntityType;
  /// Name of the source Entity Type.
  final pulumi.Input<String> sourceEntityTypeName;
  /// Type of target entity.
  final pulumi.Input<EntityType> targetEntityType;
  /// Name of the target Entity Type.
  final pulumi.Input<String> targetEntityTypeName;

  /// Creates a new [LinkArgs].
  /// [description] Localized descriptions for the Link.
  /// [displayName] Localized display name for the Link.
  /// [hubName] The name of the hub.
  /// [linkName] The name of the link.
  /// [mappings] The set of properties mappings between the source and target Types.
  /// [operationType] Determines whether this link is supposed to create or delete instances if Link is NOT Reference Only.
  /// [participantPropertyReferences] The properties that represent the participating profile.
  /// [referenceOnly] Indicating whether the link is reference only link. This flag is ignored if the Mappings are defined. If the mappings are not defined and it is set to true, links processing will not create or update profiles.
  /// [resourceGroupName] The name of the resource group.
  /// [sourceEntityType] Type of source entity.
  /// [sourceEntityTypeName] Name of the source Entity Type.
  /// [targetEntityType] Type of target entity.
  /// [targetEntityTypeName] Name of the target Entity Type.
  LinkArgs({
    Map<String, String>? description,
    Map<String, String>? displayName,
    required String hubName,
    String? linkName,
    List<TypePropertiesMapping>? mappings,
    InstanceOperationType? operationType,
    required List<ParticipantPropertyReference> participantPropertyReferences,
    bool? referenceOnly,
    required String resourceGroupName,
    required EntityType sourceEntityType,
    required String sourceEntityTypeName,
    required EntityType targetEntityType,
    required String targetEntityTypeName,
  }) :
      description = pulumi.Input.asOptionalInput<Map<String, String>>(description),
      displayName = pulumi.Input.asOptionalInput<Map<String, String>>(displayName),
      hubName = pulumi.Input.asInput<String>(hubName),
      linkName = pulumi.Input.asOptionalInput<String>(linkName),
      mappings = pulumi.Input.asOptionalInput<List<TypePropertiesMapping>>(mappings),
      operationType = pulumi.Input.asOptionalInput<InstanceOperationType>(operationType),
      participantPropertyReferences = pulumi.Input.asInput<List<ParticipantPropertyReference>>(participantPropertyReferences),
      referenceOnly = pulumi.Input.asOptionalInput<bool>(referenceOnly),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sourceEntityType = pulumi.Input.asInput<EntityType>(sourceEntityType),
      sourceEntityTypeName = pulumi.Input.asInput<String>(sourceEntityTypeName),
      targetEntityType = pulumi.Input.asInput<EntityType>(targetEntityType),
      targetEntityTypeName = pulumi.Input.asInput<String>(targetEntityTypeName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'hubName': hubName,
      'linkName': ?linkName,
      'mappings': ?pulumi.Input.mapOptionalInputValue<List<TypePropertiesMapping>, List<Map<String, dynamic>>>(mappings, (value) => pulumi.Input.encodeList<TypePropertiesMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operationType': ?pulumi.Input.mapOptionalInputValue<InstanceOperationType, String>(operationType, (value) => value.value),
      'participantPropertyReferences': pulumi.Input.mapInputValue<List<ParticipantPropertyReference>, List<Map<String, dynamic>>>(participantPropertyReferences, (value) => pulumi.Input.encodeList<ParticipantPropertyReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'referenceOnly': ?referenceOnly,
      'resourceGroupName': resourceGroupName,
      'sourceEntityType': pulumi.Input.mapInputValue<EntityType, String>(sourceEntityType, (value) => value.value),
      'sourceEntityTypeName': sourceEntityTypeName,
      'targetEntityType': pulumi.Input.mapInputValue<EntityType, String>(targetEntityType, (value) => value.value),
      'targetEntityTypeName': targetEntityTypeName,
    };
  }

  factory LinkArgs.fromMap(Map<String, dynamic> map) {
    return LinkArgs(
      description: map['description'] == null ? null : (map['description'] as Map).cast<String, String>(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as Map).cast<String, String>(),
      hubName: map['hubName'] as String,
      linkName: map['linkName'] == null ? null : map['linkName'] as String,
      mappings: map['mappings'] == null ? null : pulumi.Input.decodeList<TypePropertiesMapping>(map['mappings'], (value) => TypePropertiesMapping.fromMap((value as Map).cast<String, dynamic>())),
      operationType: map['operationType'] == null ? null : InstanceOperationType.fromValue(map['operationType'] as String),
      participantPropertyReferences: pulumi.Input.decodeList<ParticipantPropertyReference>(map['participantPropertyReferences'], (value) => ParticipantPropertyReference.fromMap((value as Map).cast<String, dynamic>())),
      referenceOnly: map['referenceOnly'] == null ? null : map['referenceOnly'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      sourceEntityType: EntityType.fromValue(map['sourceEntityType'] as String),
      sourceEntityTypeName: map['sourceEntityTypeName'] as String,
      targetEntityType: EntityType.fromValue(map['targetEntityType'] as String),
      targetEntityTypeName: map['targetEntityTypeName'] as String,
    );
  }
}

