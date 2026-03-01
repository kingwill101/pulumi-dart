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
  ContentTypeArgs({
    pulumi.Output<String>? contentTypeId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? id,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<dynamic>? schema,
    required pulumi.Output<String> serviceName,
    pulumi.Output<String>? version,
  }) :
      contentTypeId = pulumi.Input.asOptionalInput<String>(contentTypeId),
      description = pulumi.Input.asOptionalInput<String>(description),
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schema = pulumi.Input.asOptionalInput<dynamic>(schema),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      contentTypeId: map['contentTypeId'] == null ? null : pulumi.Output.create<String>(map['contentTypeId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      schema: map['schema'] == null ? null : pulumi.Output.create<dynamic>(map['schema']),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

