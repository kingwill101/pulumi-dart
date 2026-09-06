// ignore_for_file: unused_element, unnecessary_cast

import 'content_link_response.dart';

/// Result data returned by getIntegrationAccountSchema.
class GetIntegrationAccountSchemaResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The changed time.
  final String? changedTime;
  /// The content.
  final String? content;
  /// The content link.
  final ContentLinkResponse? contentLink;
  /// The content type.
  final String? contentType;
  /// The created time.
  final String? createdTime;
  /// The document name.
  final String? documentName;
  /// The file name.
  final String? fileName;
  /// The resource id.
  final String? id;
  /// The resource location.
  final String? location;
  /// The metadata.
  final dynamic metadata;
  /// Gets the resource name.
  final String? name;
  /// The schema type.
  final String? schemaType;
  /// The resource tags.
  final Map<String, String>? tags;
  /// The target namespace of the schema.
  final String? targetNamespace;
  /// Gets the resource type.
  final String? type;

  /// Creates a new [GetIntegrationAccountSchemaResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [changedTime] The changed time.
  /// [content] The content.
  /// [contentLink] The content link.
  /// [contentType] The content type.
  /// [createdTime] The created time.
  /// [documentName] The document name.
  /// [fileName] The file name.
  /// [id] The resource id.
  /// [location] The resource location.
  /// [metadata] The metadata.
  /// [name] Gets the resource name.
  /// [schemaType] The schema type.
  /// [tags] The resource tags.
  /// [targetNamespace] The target namespace of the schema.
  /// [type] Gets the resource type.
  const GetIntegrationAccountSchemaResult({
    this.azureApiVersion,
    this.changedTime,
    this.content,
    this.contentLink,
    this.contentType,
    this.createdTime,
    this.documentName,
    this.fileName,
    this.id,
    this.location,
    this.metadata,
    this.name,
    this.schemaType,
    this.tags,
    this.targetNamespace,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'changedTime': ?changedTime,
      'content': ?content,
      'contentLink': ?contentLink?.toMap(),
      'contentType': ?contentType,
      'createdTime': ?createdTime,
      'documentName': ?documentName,
      'fileName': ?fileName,
      'id': ?id,
      'location': ?location,
      'metadata': ?metadata,
      'name': ?name,
      'schemaType': ?schemaType,
      'tags': ?tags,
      'targetNamespace': ?targetNamespace,
      'type': ?type,
    };
  }

  factory GetIntegrationAccountSchemaResult.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountSchemaResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      changedTime: (() { final guardedValue = map['changedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentLink: (() { final guardedValue = map['contentLink']; if (guardedValue == null) return null; return ContentLinkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      documentName: (() { final guardedValue = map['documentName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileName: (() { final guardedValue = map['fileName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return guardedValue; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schemaType: (() { final guardedValue = map['schemaType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetNamespace: (() { final guardedValue = map['targetNamespace']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
