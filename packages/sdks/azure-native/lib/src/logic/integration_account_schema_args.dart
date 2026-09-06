// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_integration_account_schema_args_doc}
/// The set of arguments for IntegrationAccountSchema.
/// {@endtemplate}
/// {@macro pulumi_logic_integration_account_schema_args_doc}
class IntegrationAccountSchemaArgs {
  /// The content.
  final pulumi.Input<String?>? content;
  /// The content type.
  final pulumi.Input<String?>? contentType;
  /// The document name.
  final pulumi.Input<String?>? documentName;
  /// The file name.
  final pulumi.Input<String?>? fileName;
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;
  /// The resource location.
  final pulumi.Input<String?>? location;
  /// The metadata.
  final pulumi.Input<dynamic>? metadata;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The integration account schema name.
  final pulumi.Input<String?>? schemaName;
  /// The schema type.
  final pulumi.Input<dynamic> schemaType;
  /// The resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The target namespace of the schema.
  final pulumi.Input<String?>? targetNamespace;

  /// Creates a new [IntegrationAccountSchemaArgs].
  /// [content] The content.
  /// [contentType] The content type.
  /// [documentName] The document name.
  /// [fileName] The file name.
  /// [integrationAccountName] The integration account name.
  /// [location] The resource location.
  /// [metadata] The metadata.
  /// [resourceGroupName] The resource group name.
  /// [schemaName] The integration account schema name.
  /// [schemaType] The schema type.
  /// [tags] The resource tags.
  /// [targetNamespace] The target namespace of the schema.
  const IntegrationAccountSchemaArgs({
    this.content,
    this.contentType,
    this.documentName,
    this.fileName,
    required this.integrationAccountName,
    this.location,
    this.metadata,
    required this.resourceGroupName,
    this.schemaName,
    required this.schemaType,
    this.tags,
    this.targetNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'contentType': ?contentType,
      'documentName': ?documentName,
      'fileName': ?fileName,
      'integrationAccountName': integrationAccountName,
      'location': ?location,
      'metadata': ?metadata,
      'resourceGroupName': resourceGroupName,
      'schemaName': ?schemaName,
      'schemaType': schemaType,
      'tags': ?tags,
      'targetNamespace': ?targetNamespace,
    };
  }

  factory IntegrationAccountSchemaArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountSchemaArgs(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      documentName: (() { final guardedValue = map['documentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileName: (() { final guardedValue = map['fileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationAccountName: pulumi.Input.fromValue(map['integrationAccountName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      schemaName: (() { final guardedValue = map['schemaName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaType: pulumi.Input.fromValue(map['schemaType']),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetNamespace: (() { final guardedValue = map['targetNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
