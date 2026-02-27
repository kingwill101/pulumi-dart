// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSchema.
class GetSchemaArgs3 {
  final Input<String>? project;
  final Input<String> schemaId;
  final Input<String>? view;

  GetSchemaArgs3({
    this.project,
    required this.schemaId,
    this.view,
  });

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

  factory GetSchemaArgs3.fromMap(Map<String, dynamic> map) {
    return GetSchemaArgs3(
      project: Input.asOptionalInput<String>(map['project']),
      schemaId: Input.asInput<String>(map['schemaId']),
      view: Input.asOptionalInput<String>(map['view']),
    );
  }
}
