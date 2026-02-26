// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getMetadataSchema.
class GetMetadataSchemaArgs {
  final Input<String> location;
  final Input<String> metadataSchemaId;
  final Input<String> metadataStoreId;
  final Input<String>? project;

  GetMetadataSchemaArgs({
    required this.location,
    required this.metadataSchemaId,
    required this.metadataStoreId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['metadataSchemaId'] = metadataSchemaId;
    map['metadataStoreId'] = metadataStoreId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetMetadataSchemaArgs.fromMap(Map<String, dynamic> map) {
    return GetMetadataSchemaArgs(
      location: Input.asInput<String>(map['location']),
      metadataSchemaId: Input.asInput<String>(map['metadataSchemaId']),
      metadataStoreId: Input.asInput<String>(map['metadataStoreId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
