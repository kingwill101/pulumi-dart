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
      'fields': ?(() { final guardedValue = fields; if (guardedValue == null) return null; return pulumi.Input.encodeList<PropertyDefinitionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
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
      'strongIds': ?(() { final guardedValue = strongIds; if (guardedValue == null) return null; return pulumi.Input.encodeList<StrongIdResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tenantId': tenantId,
      'timestampFieldName': ?timestampFieldName,
      'type': type,
      'typeName': ?typeName,
    };
  }

  factory GetProfileResult.fromMap(Map<String, dynamic> map) {
    return GetProfileResult(
      apiEntitySetName: (() { final guardedValue = map['apiEntitySetName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, List<String>>(); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      entityType: (() { final guardedValue = map['entityType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PropertyDefinitionResponse>(guardedValue, (value) => PropertyDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      instancesCount: (() { final guardedValue = map['instancesCount']; if (guardedValue == null) return null; return guardedValue as int; })(),
      largeImage: (() { final guardedValue = map['largeImage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastChangedUtc: map['lastChangedUtc'] as String,
      localizedAttributes: (() { final guardedValue = map['localizedAttributes']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, Map<String, String>>(); })(),
      mediumImage: (() { final guardedValue = map['mediumImage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      schemaItemTypeLink: (() { final guardedValue = map['schemaItemTypeLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      smallImage: (() { final guardedValue = map['smallImage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      strongIds: (() { final guardedValue = map['strongIds']; if (guardedValue == null) return null; return pulumi.Input.decodeList<StrongIdResponse>(guardedValue, (value) => StrongIdResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      tenantId: map['tenantId'] as String,
      timestampFieldName: (() { final guardedValue = map['timestampFieldName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
      typeName: (() { final guardedValue = map['typeName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

