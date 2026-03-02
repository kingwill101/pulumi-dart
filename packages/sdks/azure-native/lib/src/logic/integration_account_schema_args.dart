// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_integration_account_schema_args_doc}
/// The set of arguments for IntegrationAccountSchema.
/// {@endtemplate}
/// {@macro pulumi_logic_integration_account_schema_args_doc}
class IntegrationAccountSchemaArgs {
  /// The content.
  final pulumi.Input<String>? content;
  /// The content type.
  final pulumi.Input<String>? contentType;
  /// The document name.
  final pulumi.Input<String>? documentName;
  /// The file name.
  final pulumi.Input<String>? fileName;
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;
  /// The resource location.
  final pulumi.Input<String>? location;
  /// The metadata.
  final pulumi.Input<dynamic>? metadata;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The integration account schema name.
  final pulumi.Input<String>? schemaName;
  /// The schema type.
  final pulumi.Input<String> schemaType;
  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The target namespace of the schema.
  final pulumi.Input<String>? targetNamespace;

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
  IntegrationAccountSchemaArgs({
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
      content: map['content'] == null ? null : (map['content']! as String).input(),
      contentType: map['contentType'] == null ? null : (map['contentType']! as String).input(),
      documentName: map['documentName'] == null ? null : (map['documentName']! as String).input(),
      fileName: map['fileName'] == null ? null : (map['fileName']! as String).input(),
      integrationAccountName: (map['integrationAccountName'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      metadata: map['metadata'] == null ? null : (map['metadata']!).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      schemaName: map['schemaName'] == null ? null : (map['schemaName']! as String).input(),
      schemaType: (map['schemaType'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      targetNamespace: map['targetNamespace'] == null ? null : (map['targetNamespace']! as String).input(),
    );
  }
}

