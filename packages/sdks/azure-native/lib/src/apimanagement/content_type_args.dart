// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_content_type_args_doc}
/// The set of arguments for ContentType.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_content_type_args_doc}
class ContentTypeArgs {
  /// Content type identifier.
  final pulumi.Input<String>? contentTypeId;
  /// Content type description.
  final pulumi.Input<String>? description;
  /// Content type identifier
  final pulumi.Input<String>? id;
  /// Content type name. Must be 1 to 250 characters long.
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Content type schema.
  final pulumi.Input<dynamic>? schema;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Content type version.
  final pulumi.Input<String>? version;

  /// Creates a new [ContentTypeArgs].
  /// [contentTypeId] Content type identifier.
  /// [description] Content type description.
  /// [id] Content type identifier
  /// [name] Content type name. Must be 1 to 250 characters long.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schema] Content type schema.
  /// [serviceName] The name of the API Management service.
  /// [version] Content type version.
  const ContentTypeArgs({
    this.contentTypeId,
    this.description,
    this.id,
    this.name,
    required this.resourceGroupName,
    this.schema,
    required this.serviceName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentTypeId': ?contentTypeId,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'schema': ?schema,
      'serviceName': serviceName,
      'version': ?version,
    };
  }

  factory ContentTypeArgs.fromMap(Map<String, dynamic> map) {
    return ContentTypeArgs(
      contentTypeId: (() { final guardedValue = map['contentTypeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

