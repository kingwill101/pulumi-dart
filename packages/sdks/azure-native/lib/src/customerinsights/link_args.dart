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
    this.description,
    this.displayName,
    required this.hubName,
    this.linkName,
    this.mappings,
    this.operationType,
    required this.participantPropertyReferences,
    this.referenceOnly,
    required this.resourceGroupName,
    required this.sourceEntityType,
    required this.sourceEntityTypeName,
    required this.targetEntityType,
    required this.targetEntityTypeName,
  });

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
      description: map['description'] == null ? null : ((map['description'] as Map).cast<String, String>()).input(),
      displayName: map['displayName'] == null ? null : ((map['displayName'] as Map).cast<String, String>()).input(),
      hubName: (map['hubName'] as String).input(),
      linkName: map['linkName'] == null ? null : (map['linkName'] as String).input(),
      mappings: map['mappings'] == null ? null : (pulumi.Input.decodeList<TypePropertiesMapping>(map['mappings'], (value) => TypePropertiesMapping.fromMap((value as Map).cast<String, dynamic>()))).input(),
      operationType: map['operationType'] == null ? null : (InstanceOperationType.fromValue(map['operationType'] as String)).input(),
      participantPropertyReferences: (pulumi.Input.decodeList<ParticipantPropertyReference>(map['participantPropertyReferences'], (value) => ParticipantPropertyReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      referenceOnly: map['referenceOnly'] == null ? null : (map['referenceOnly'] as bool).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sourceEntityType: (EntityType.fromValue(map['sourceEntityType'] as String)).input(),
      sourceEntityTypeName: (map['sourceEntityTypeName'] as String).input(),
      targetEntityType: (EntityType.fromValue(map['targetEntityType'] as String)).input(),
      targetEntityTypeName: (map['targetEntityTypeName'] as String).input(),
    );
  }
}

