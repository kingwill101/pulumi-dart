// ignore_for_file: unused_element, unnecessary_cast

import 'content_link_response.dart';
import 'integration_account_map_properties_response_parameters_schema.dart';

/// Result data returned by getIntegrationAccountMap.
class GetIntegrationAccountMapResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The changed time.
  final String changedTime;
  /// The content.
  final String? content;
  /// The content link.
  final ContentLinkResponse contentLink;
  /// The content type.
  final String? contentType;
  /// The created time.
  final String createdTime;
  /// The resource id.
  final String id;
  /// The resource location.
  final String? location;
  /// The map type.
  final String mapType;
  /// The metadata.
  final dynamic metadata;
  /// Gets the resource name.
  final String name;
  /// The parameters schema of integration account map.
  final IntegrationAccountMapPropertiesResponseParametersSchema? parametersSchema;
  /// The resource tags.
  final Map<String, String>? tags;
  /// Gets the resource type.
  final String type;

  /// Creates a new [GetIntegrationAccountMapResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [changedTime] The changed time.
  /// [content] The content.
  /// [contentLink] The content link.
  /// [contentType] The content type.
  /// [createdTime] The created time.
  /// [id] The resource id.
  /// [location] The resource location.
  /// [mapType] The map type.
  /// [metadata] The metadata.
  /// [name] Gets the resource name.
  /// [parametersSchema] The parameters schema of integration account map.
  /// [tags] The resource tags.
  /// [type] Gets the resource type.
  const GetIntegrationAccountMapResult({
    required this.azureApiVersion,
    required this.changedTime,
    this.content,
    required this.contentLink,
    this.contentType,
    required this.createdTime,
    required this.id,
    this.location,
    required this.mapType,
    this.metadata,
    required this.name,
    this.parametersSchema,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'changedTime': changedTime,
      'content': ?content,
      'contentLink': contentLink.toMap(),
      'contentType': ?contentType,
      'createdTime': createdTime,
      'id': id,
      'location': ?location,
      'mapType': mapType,
      'metadata': ?metadata,
      'name': name,
      'parametersSchema': ?parametersSchema?.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetIntegrationAccountMapResult.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountMapResult(
      azureApiVersion: map['azureApiVersion'] as String,
      changedTime: map['changedTime'] as String,
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentLink: ContentLinkResponse.fromMap((map['contentLink']! as Map).cast<String, dynamic>()),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdTime: map['createdTime'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mapType: map['mapType'] as String,
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return guardedValue; })(),
      name: map['name'] as String,
      parametersSchema: (() { final guardedValue = map['parametersSchema']; if (guardedValue == null) return null; return IntegrationAccountMapPropertiesResponseParametersSchema.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

