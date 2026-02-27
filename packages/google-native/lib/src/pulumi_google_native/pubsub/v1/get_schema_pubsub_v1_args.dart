// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSchema.
class GetSchemaPubsubV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> schemaId;
  final pulumi.Input<String>? view;

  GetSchemaPubsubV1Args({
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

  factory GetSchemaPubsubV1Args.fromMap(Map<String, dynamic> map) {
    return GetSchemaPubsubV1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      schemaId: pulumi.Input.asInput<String>(map['schemaId']),
      view: pulumi.Input.asOptionalInput<String>(map['view']),
    );
  }
}
