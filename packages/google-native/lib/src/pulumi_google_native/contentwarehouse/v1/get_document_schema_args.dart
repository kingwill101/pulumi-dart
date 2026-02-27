// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDocumentSchema.
class GetDocumentSchemaArgs {
  final Input<String> documentSchemaId;
  final Input<String> location;
  final Input<String>? project;

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
      documentSchemaId: Input.asInput<String>(map['documentSchemaId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
