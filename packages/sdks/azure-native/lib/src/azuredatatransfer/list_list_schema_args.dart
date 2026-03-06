// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuredatatransfer_list_list_schema_args_doc}
/// Arguments for listListSchema.
/// {@endtemplate}
/// {@macro pulumi_azuredatatransfer_list_list_schema_args_doc}
class ListListSchemaArgs {
  /// Connection ID associated with this schema
  final pulumi.Input<String>? connectionId;
  /// Content of the schema
  final pulumi.Input<String>? content;
  /// The direction of the schema.
  final pulumi.Input<String>? direction;
  /// ID associated with this schema
  final pulumi.Input<String>? id;
  /// Name of the schema
  final pulumi.Input<String>? name;
  /// The name for the pipeline that is to be requested.
  final pulumi.Input<String> pipelineName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The Schema Type
  final pulumi.Input<String>? schemaType;
  /// Uri containing SAS token for the zipped schema
  final pulumi.Input<String>? schemaUri;
  /// Status of the schema
  final pulumi.Input<String>? status;

  /// Creates a new [ListListSchemaArgs].
  /// [connectionId] Connection ID associated with this schema
  /// [content] Content of the schema
  /// [direction] The direction of the schema.
  /// [id] ID associated with this schema
  /// [name] Name of the schema
  /// [pipelineName] The name for the pipeline that is to be requested.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schemaType] The Schema Type
  /// [schemaUri] Uri containing SAS token for the zipped schema
  /// [status] Status of the schema
  const ListListSchemaArgs({
    this.connectionId,
    this.content,
    this.direction,
    this.id,
    this.name,
    required this.pipelineName,
    required this.resourceGroupName,
    this.schemaType,
    this.schemaUri,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': ?connectionId,
      'content': ?content,
      'direction': ?direction,
      'id': ?id,
      'name': ?name,
      'pipelineName': pipelineName,
      'resourceGroupName': resourceGroupName,
      'schemaType': ?schemaType,
      'schemaUri': ?schemaUri,
      'status': ?status,
    };
  }

  factory ListListSchemaArgs.fromMap(Map<String, dynamic> map) {
    return ListListSchemaArgs(
      connectionId: (() { final guardedValue = map['connectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelineName: pulumi.Input.fromValue(map['pipelineName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      schemaType: (() { final guardedValue = map['schemaType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaUri: (() { final guardedValue = map['schemaUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

