// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDocumentSchema.
class GetDocumentSchemaArgs {
  final pulumi.Input<String> documentSchemaId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetDocumentSchemaArgs({
    required this.documentSchemaId,
    required this.location,
    this.project,
  });

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
      documentSchemaId: pulumi.Input.asInput<String>(map['documentSchemaId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
