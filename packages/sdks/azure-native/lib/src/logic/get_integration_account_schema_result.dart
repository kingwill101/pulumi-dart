// ignore_for_file: unused_element, unnecessary_cast

import 'content_link_response.dart';

/// Result data returned by getIntegrationAccountSchema.
class GetIntegrationAccountSchemaResult {
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
  /// The document name.
  final String? documentName;
  /// The file name.
  final String? fileName;
  /// The resource id.
  final String id;
  /// The resource location.
  final String? location;
  /// The metadata.
  final dynamic metadata;
  /// Gets the resource name.
  final String name;
  /// The schema type.
  final String schemaType;
  /// The resource tags.
  final Map<String, String>? tags;
  /// The target namespace of the schema.
  final String? targetNamespace;
  /// Gets the resource type.
  final String type;

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
  GetIntegrationAccountSchemaResult({
    required this.azureApiVersion,
    required this.changedTime,
    this.content,
    required this.contentLink,
    this.contentType,
    required this.createdTime,
    this.documentName,
    this.fileName,
    required this.id,
    this.location,
    this.metadata,
    required this.name,
    required this.schemaType,
    this.tags,
    this.targetNamespace,
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
      'documentName': ?documentName,
      'fileName': ?fileName,
      'id': id,
      'location': ?location,
      'metadata': ?metadata,
      'name': name,
      'schemaType': schemaType,
      'tags': ?tags,
      'targetNamespace': ?targetNamespace,
      'type': type,
    };
  }

  factory GetIntegrationAccountSchemaResult.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountSchemaResult(
      azureApiVersion: map['azureApiVersion'] as String,
      changedTime: map['changedTime'] as String,
      content: map['content'] == null ? null : map['content']! as String,
      contentLink: ContentLinkResponse.fromMap((map['contentLink'] as Map).cast<String, dynamic>()),
      contentType: map['contentType'] == null ? null : map['contentType']! as String,
      createdTime: map['createdTime'] as String,
      documentName: map['documentName'] == null ? null : map['documentName']! as String,
      fileName: map['fileName'] == null ? null : map['fileName']! as String,
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location']! as String,
      metadata: map['metadata'] == null ? null : map['metadata']!,
      name: map['name'] as String,
      schemaType: map['schemaType'] as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      targetNamespace: map['targetNamespace'] == null ? null : map['targetNamespace']! as String,
      type: map['type'] as String,
    );
  }
}

