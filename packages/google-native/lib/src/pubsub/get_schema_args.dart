// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsub_v1_get_schema_args_doc}
/// Arguments for getSchema.
/// {@endtemplate}
/// {@macro pulumi_pubsub_v1_get_schema_args_doc}
class GetSchemaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> schemaId;
  final pulumi.Input<String>? view;

  /// Creates a new [GetSchemaArgs].
  /// [project] Optional.
  /// [schemaId] Required.
  /// [view] Optional.
  GetSchemaArgs({
    String? project,
    required String schemaId,
    String? view,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        schemaId = pulumi.Input.asInput<String>(schemaId),
        view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['schemaId'] = schemaId;
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetSchemaArgs.fromMap(Map<String, dynamic> map) {
    return GetSchemaArgs(
      project: map['project'] == null ? null : map['project'] as String,
      schemaId: map['schemaId'] as String,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}
