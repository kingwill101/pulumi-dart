// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSchema.
class GetSchemaArgs2 {
  final Input<String> collectionId;
  final Input<String> dataStoreId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> schemaId;

  GetSchemaArgs2({
    required this.collectionId,
    required this.dataStoreId,
    required this.location,
    this.project,
    required this.schemaId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collectionId'] = collectionId;
    map['dataStoreId'] = dataStoreId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['schemaId'] = schemaId;
    return map;
  }

  factory GetSchemaArgs2.fromMap(Map<String, dynamic> map) {
    return GetSchemaArgs2(
      collectionId: Input.asInput<String>(map['collectionId']),
      dataStoreId: Input.asInput<String>(map['dataStoreId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      schemaId: Input.asInput<String>(map['schemaId']),
    );
  }
}
