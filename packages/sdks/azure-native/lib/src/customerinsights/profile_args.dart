// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_types.dart';
import 'property_definition.dart';
import 'strong_id.dart';

/// {@template pulumi_customerinsights_profile_args_doc}
/// The set of arguments for Profile.
/// {@endtemplate}
/// {@macro pulumi_customerinsights_profile_args_doc}
class ProfileArgs {
  /// The api entity set name. This becomes the odata entity set name for the entity Type being referred in this object.
  final pulumi.Input<String>? apiEntitySetName;
  /// The attributes for the Type.
  final pulumi.Input<Map<String, List<String>>>? attributes;
  /// Localized descriptions for the property.
  final pulumi.Input<Map<String, String>>? description;
  /// Localized display names for the property.
  final pulumi.Input<Map<String, String>>? displayName;
  /// Type of entity.
  final pulumi.Input<EntityTypes>? entityType;
  /// The properties of the Profile.
  final pulumi.Input<List<PropertyDefinition>>? fields;
  /// The name of the hub.
  final pulumi.Input<String> hubName;
  /// The instance count.
  final pulumi.Input<int>? instancesCount;
  /// Large Image associated with the Property or EntityType.
  final pulumi.Input<String>? largeImage;
  /// Any custom localized attributes for the Type.
  final pulumi.Input<Map<String, Map<String, String>>>? localizedAttributes;
  /// Medium Image associated with the Property or EntityType.
  final pulumi.Input<String>? mediumImage;
  /// The name of the profile.
  final pulumi.Input<String>? profileName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The schema org link. This helps ACI identify and suggest semantic models.
  final pulumi.Input<String>? schemaItemTypeLink;
  /// Small Image associated with the Property or EntityType.
  final pulumi.Input<String>? smallImage;
  /// The strong IDs.
  final pulumi.Input<List<StrongId>>? strongIds;
  /// The timestamp property name. Represents the time when the interaction or profile update happened.
  final pulumi.Input<String>? timestampFieldName;
  /// The name of the entity.
  final pulumi.Input<String>? typeName;

  /// Creates a new [ProfileArgs].
  /// [apiEntitySetName] The api entity set name. This becomes the odata entity set name for the entity Type being referred in this object.
  /// [attributes] The attributes for the Type.
  /// [description] Localized descriptions for the property.
  /// [displayName] Localized display names for the property.
  /// [entityType] Type of entity.
  /// [fields] The properties of the Profile.
  /// [hubName] The name of the hub.
  /// [instancesCount] The instance count.
  /// [largeImage] Large Image associated with the Property or EntityType.
  /// [localizedAttributes] Any custom localized attributes for the Type.
  /// [mediumImage] Medium Image associated with the Property or EntityType.
  /// [profileName] The name of the profile.
  /// [resourceGroupName] The name of the resource group.
  /// [schemaItemTypeLink] The schema org link. This helps ACI identify and suggest semantic models.
  /// [smallImage] Small Image associated with the Property or EntityType.
  /// [strongIds] The strong IDs.
  /// [timestampFieldName] The timestamp property name. Represents the time when the interaction or profile update happened.
  /// [typeName] The name of the entity.
  const ProfileArgs({
    this.apiEntitySetName,
    this.attributes,
    this.description,
    this.displayName,
    this.entityType,
    this.fields,
    required this.hubName,
    this.instancesCount,
    this.largeImage,
    this.localizedAttributes,
    this.mediumImage,
    this.profileName,
    required this.resourceGroupName,
    this.schemaItemTypeLink,
    this.smallImage,
    this.strongIds,
    this.timestampFieldName,
    this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiEntitySetName': ?apiEntitySetName,
      'attributes': ?attributes,
      'description': ?description,
      'displayName': ?displayName,
      'entityType': ?pulumi.Input.mapOptionalInputValue<EntityTypes, String>(entityType, (value) => value.wireValue),
      'fields': ?pulumi.Input.mapOptionalInputValue<List<PropertyDefinition>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<PropertyDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hubName': hubName,
      'instancesCount': ?instancesCount,
      'largeImage': ?largeImage,
      'localizedAttributes': ?localizedAttributes,
      'mediumImage': ?mediumImage,
      'profileName': ?profileName,
      'resourceGroupName': resourceGroupName,
      'schemaItemTypeLink': ?schemaItemTypeLink,
      'smallImage': ?smallImage,
      'strongIds': ?pulumi.Input.mapOptionalInputValue<List<StrongId>, List<Map<String, dynamic>>>(strongIds, (value) => pulumi.Input.encodeList<StrongId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timestampFieldName': ?timestampFieldName,
      'typeName': ?typeName,
    };
  }

  factory ProfileArgs.fromMap(Map<String, dynamic> map) {
    return ProfileArgs(
      apiEntitySetName: (() { final guardedValue = map['apiEntitySetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, List<String>>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      entityType: (() { final guardedValue = map['entityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntityTypes.fromValue(guardedValue as String)); })(),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PropertyDefinition>(guardedValue, (value) => PropertyDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hubName: pulumi.Input.fromValue(map['hubName'] as String),
      instancesCount: (() { final guardedValue = map['instancesCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      largeImage: (() { final guardedValue = map['largeImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localizedAttributes: (() { final guardedValue = map['localizedAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, Map<String, String>>()); })(),
      mediumImage: (() { final guardedValue = map['mediumImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profileName: (() { final guardedValue = map['profileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      schemaItemTypeLink: (() { final guardedValue = map['schemaItemTypeLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      smallImage: (() { final guardedValue = map['smallImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      strongIds: (() { final guardedValue = map['strongIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StrongId>(guardedValue, (value) => StrongId.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timestampFieldName: (() { final guardedValue = map['timestampFieldName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeName: (() { final guardedValue = map['typeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
