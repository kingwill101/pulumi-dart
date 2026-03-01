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
  ListListSchemaArgs({
    String? connectionId,
    String? content,
    String? direction,
    String? id,
    String? name,
    required String pipelineName,
    required String resourceGroupName,
    String? schemaType,
    String? schemaUri,
    String? status,
  }) :
      connectionId = pulumi.Input.asOptionalInput<String>(connectionId),
      content = pulumi.Input.asOptionalInput<String>(content),
      direction = pulumi.Input.asOptionalInput<String>(direction),
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      pipelineName = pulumi.Input.asInput<String>(pipelineName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schemaType = pulumi.Input.asOptionalInput<String>(schemaType),
      schemaUri = pulumi.Input.asOptionalInput<String>(schemaUri),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      connectionId: map['connectionId'] == null ? null : map['connectionId'] as String,
      content: map['content'] == null ? null : map['content'] as String,
      direction: map['direction'] == null ? null : map['direction'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      pipelineName: map['pipelineName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      schemaType: map['schemaType'] == null ? null : map['schemaType'] as String,
      schemaUri: map['schemaUri'] == null ? null : map['schemaUri'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

