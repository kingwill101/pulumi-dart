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
  final pulumi.Input<Map<String, String>?>? description;
  /// Localized display name for the Link.
  final pulumi.Input<Map<String, String>?>? displayName;
  /// The name of the hub.
  final pulumi.Input<String> hubName;
  /// The name of the link.
  final pulumi.Input<String?>? linkName;
  /// The set of properties mappings between the source and target Types.
  final pulumi.Input<List<TypePropertiesMapping>?>? mappings;
  /// Determines whether this link is supposed to create or delete instances if Link is NOT Reference Only.
  final pulumi.Input<InstanceOperationType?>? operationType;
  /// The properties that represent the participating profile.
  final pulumi.Input<List<ParticipantPropertyReference>> participantPropertyReferences;
  /// Indicating whether the link is reference only link. This flag is ignored if the Mappings are defined. If the mappings are not defined and it is set to true, links processing will not create or update profiles.
  final pulumi.Input<bool?>? referenceOnly;
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
  const LinkArgs({
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
      'operationType': ?pulumi.Input.mapOptionalInputValue<InstanceOperationType, String>(operationType, (value) => value.wireValue),
      'participantPropertyReferences': pulumi.Input.mapInputValue<List<ParticipantPropertyReference>, List<Map<String, dynamic>>>(participantPropertyReferences, (value) => pulumi.Input.encodeList<ParticipantPropertyReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'referenceOnly': ?referenceOnly,
      'resourceGroupName': resourceGroupName,
      'sourceEntityType': pulumi.Input.mapInputValue<EntityType, String>(sourceEntityType, (value) => value.wireValue),
      'sourceEntityTypeName': sourceEntityTypeName,
      'targetEntityType': pulumi.Input.mapInputValue<EntityType, String>(targetEntityType, (value) => value.wireValue),
      'targetEntityTypeName': targetEntityTypeName,
    };
  }

  factory LinkArgs.fromMap(Map<String, dynamic> map) {
    return LinkArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      hubName: pulumi.Input.fromValue(map['hubName'] as String),
      linkName: (() { final guardedValue = map['linkName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mappings: (() { final guardedValue = map['mappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TypePropertiesMapping>(guardedValue, (value) => TypePropertiesMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      operationType: (() { final guardedValue = map['operationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceOperationType.fromValue(guardedValue as String)); })(),
      participantPropertyReferences: pulumi.Input.fromValue(pulumi.Input.decodeList<ParticipantPropertyReference>(map['participantPropertyReferences']!, (value) => ParticipantPropertyReference.fromMap((value as Map).cast<String, dynamic>()))),
      referenceOnly: (() { final guardedValue = map['referenceOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sourceEntityType: pulumi.Input.fromValue(EntityType.fromValue(map['sourceEntityType']! as String)),
      sourceEntityTypeName: pulumi.Input.fromValue(map['sourceEntityTypeName'] as String),
      targetEntityType: pulumi.Input.fromValue(EntityType.fromValue(map['targetEntityType']! as String)),
      targetEntityTypeName: pulumi.Input.fromValue(map['targetEntityTypeName'] as String),
    );
  }
}
