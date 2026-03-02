// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'property_definition_response.dart';
import 'strong_id_response.dart';

/// Result data returned by getProfile.
class GetProfileResult {
  /// The api entity set name. This becomes the odata entity set name for the entity Type being referred in this object.
  final String? apiEntitySetName;
  /// The attributes for the Type.
  final Map<String, List<String>>? attributes;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Localized descriptions for the property.
  final Map<String, String>? description;
  /// Localized display names for the property.
  final Map<String, String>? displayName;
  /// Type of entity.
  final String? entityType;
  /// The properties of the Profile.
  final List<PropertyDefinitionResponse>? fields;
  /// Resource ID.
  final String id;
  /// The instance count.
  final int? instancesCount;
  /// Large Image associated with the Property or EntityType.
  final String? largeImage;
  /// The last changed time for the type definition.
  final String lastChangedUtc;
  /// Any custom localized attributes for the Type.
  final Map<String, Map<String, String>>? localizedAttributes;
  /// Medium Image associated with the Property or EntityType.
  final String? mediumImage;
  /// Resource name.
  final String name;
  /// Provisioning state.
  final String provisioningState;
  /// The schema org link. This helps ACI identify and suggest semantic models.
  final String? schemaItemTypeLink;
  /// Small Image associated with the Property or EntityType.
  final String? smallImage;
  /// The strong IDs.
  final List<StrongIdResponse>? strongIds;
  /// The hub name.
  final String tenantId;
  /// The timestamp property name. Represents the time when the interaction or profile update happened.
  final String? timestampFieldName;
  /// Resource type.
  final String type;
  /// The name of the entity.
  final String? typeName;

  /// Creates a new [GetProfileResult].
  /// [apiEntitySetName] The api entity set name. This becomes the odata entity set name for the entity Type being referred in this object.
  /// [attributes] The attributes for the Type.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Localized descriptions for the property.
  /// [displayName] Localized display names for the property.
  /// [entityType] Type of entity.
  /// [fields] The properties of the Profile.
  /// [id] Resource ID.
  /// [instancesCount] The instance count.
  /// [largeImage] Large Image associated with the Property or EntityType.
  /// [lastChangedUtc] The last changed time for the type definition.
  /// [localizedAttributes] Any custom localized attributes for the Type.
  /// [mediumImage] Medium Image associated with the Property or EntityType.
  /// [name] Resource name.
  /// [provisioningState] Provisioning state.
  /// [schemaItemTypeLink] The schema org link. This helps ACI identify and suggest semantic models.
  /// [smallImage] Small Image associated with the Property or EntityType.
  /// [strongIds] The strong IDs.
  /// [tenantId] The hub name.
  /// [timestampFieldName] The timestamp property name. Represents the time when the interaction or profile update happened.
  /// [type] Resource type.
  /// [typeName] The name of the entity.
  GetProfileResult({
    this.apiEntitySetName,
    this.attributes,
    required this.azureApiVersion,
    this.description,
    this.displayName,
    this.entityType,
    this.fields,
    required this.id,
    this.instancesCount,
    this.largeImage,
    required this.lastChangedUtc,
    this.localizedAttributes,
    this.mediumImage,
    required this.name,
    required this.provisioningState,
    this.schemaItemTypeLink,
    this.smallImage,
    this.strongIds,
    required this.tenantId,
    this.timestampFieldName,
    required this.type,
    this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiEntitySetName': ?apiEntitySetName,
      'attributes': ?attributes,
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'entityType': ?entityType,
      'fields': ?fields == null ? null : pulumi.Input.encodeList<PropertyDefinitionResponse, Map<String, dynamic>>(fields!, (value) => value.toMap()),
      'id': id,
      'instancesCount': ?instancesCount,
      'largeImage': ?largeImage,
      'lastChangedUtc': lastChangedUtc,
      'localizedAttributes': ?localizedAttributes,
      'mediumImage': ?mediumImage,
      'name': name,
      'provisioningState': provisioningState,
      'schemaItemTypeLink': ?schemaItemTypeLink,
      'smallImage': ?smallImage,
      'strongIds': ?strongIds == null ? null : pulumi.Input.encodeList<StrongIdResponse, Map<String, dynamic>>(strongIds!, (value) => value.toMap()),
      'tenantId': tenantId,
      'timestampFieldName': ?timestampFieldName,
      'type': type,
      'typeName': ?typeName,
    };
  }

  factory GetProfileResult.fromMap(Map<String, dynamic> map) {
    return GetProfileResult(
      apiEntitySetName: map['apiEntitySetName'] == null ? null : map['apiEntitySetName']! as String,
      attributes: map['attributes'] == null ? null : (map['attributes']! as Map).cast<String, List<String>>(),
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : (map['description']! as Map).cast<String, String>(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as Map).cast<String, String>(),
      entityType: map['entityType'] == null ? null : map['entityType']! as String,
      fields: map['fields'] == null ? null : pulumi.Input.decodeList<PropertyDefinitionResponse>(map['fields']!, (value) => PropertyDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      instancesCount: map['instancesCount'] == null ? null : map['instancesCount']! as int,
      largeImage: map['largeImage'] == null ? null : map['largeImage']! as String,
      lastChangedUtc: map['lastChangedUtc'] as String,
      localizedAttributes: map['localizedAttributes'] == null ? null : (map['localizedAttributes']! as Map).cast<String, Map<String, String>>(),
      mediumImage: map['mediumImage'] == null ? null : map['mediumImage']! as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      schemaItemTypeLink: map['schemaItemTypeLink'] == null ? null : map['schemaItemTypeLink']! as String,
      smallImage: map['smallImage'] == null ? null : map['smallImage']! as String,
      strongIds: map['strongIds'] == null ? null : pulumi.Input.decodeList<StrongIdResponse>(map['strongIds']!, (value) => StrongIdResponse.fromMap((value as Map).cast<String, dynamic>())),
      tenantId: map['tenantId'] as String,
      timestampFieldName: map['timestampFieldName'] == null ? null : map['timestampFieldName']! as String,
      type: map['type'] as String,
      typeName: map['typeName'] == null ? null : map['typeName']! as String,
    );
  }
}

