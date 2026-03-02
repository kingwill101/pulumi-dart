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
  ProfileArgs({
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
      'entityType': ?pulumi.Input.mapOptionalInputValue<EntityTypes, String>(entityType, (value) => value.value),
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
      apiEntitySetName: map['apiEntitySetName'] == null ? null : (map['apiEntitySetName'] as String).input(),
      attributes: map['attributes'] == null ? null : ((map['attributes'] as Map).cast<String, List<String>>()).input(),
      description: map['description'] == null ? null : ((map['description'] as Map).cast<String, String>()).input(),
      displayName: map['displayName'] == null ? null : ((map['displayName'] as Map).cast<String, String>()).input(),
      entityType: map['entityType'] == null ? null : (EntityTypes.fromValue(map['entityType'] as String)).input(),
      fields: map['fields'] == null ? null : (pulumi.Input.decodeList<PropertyDefinition>(map['fields'], (value) => PropertyDefinition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hubName: (map['hubName'] as String).input(),
      instancesCount: map['instancesCount'] == null ? null : (map['instancesCount'] as int).input(),
      largeImage: map['largeImage'] == null ? null : (map['largeImage'] as String).input(),
      localizedAttributes: map['localizedAttributes'] == null ? null : ((map['localizedAttributes'] as Map).cast<String, Map<String, String>>()).input(),
      mediumImage: map['mediumImage'] == null ? null : (map['mediumImage'] as String).input(),
      profileName: map['profileName'] == null ? null : (map['profileName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      schemaItemTypeLink: map['schemaItemTypeLink'] == null ? null : (map['schemaItemTypeLink'] as String).input(),
      smallImage: map['smallImage'] == null ? null : (map['smallImage'] as String).input(),
      strongIds: map['strongIds'] == null ? null : (pulumi.Input.decodeList<StrongId>(map['strongIds'], (value) => StrongId.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timestampFieldName: map['timestampFieldName'] == null ? null : (map['timestampFieldName'] as String).input(),
      typeName: map['typeName'] == null ? null : (map['typeName'] as String).input(),
    );
  }
}

