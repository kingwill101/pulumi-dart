// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_contentwarehouse_v1_get_document_schema_args_doc}
/// Arguments for getDocumentSchema.
/// {@endtemplate}
/// {@macro pulumi_contentwarehouse_v1_get_document_schema_args_doc}
class GetDocumentSchemaArgs {
  final pulumi.Input<String> documentSchemaId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDocumentSchemaArgs].
  /// [documentSchemaId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDocumentSchemaArgs({
    required String documentSchemaId,
    required String location,
    String? project,
  })  : documentSchemaId = pulumi.Input.asInput<String>(documentSchemaId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['documentSchemaId'] = documentSchemaId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDocumentSchemaArgs.fromMap(Map<String, dynamic> map) {
    return GetDocumentSchemaArgs(
      documentSchemaId: map['documentSchemaId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
