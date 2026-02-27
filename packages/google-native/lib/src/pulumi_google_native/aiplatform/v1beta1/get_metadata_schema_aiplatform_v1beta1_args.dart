// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getMetadataSchema.
class GetMetadataSchemaAiplatformV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> metadataSchemaId;
  final pulumi.Input<String> metadataStoreId;
  final pulumi.Input<String>? project;

  GetMetadataSchemaAiplatformV1beta1Args({
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

  factory GetMetadataSchemaAiplatformV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetMetadataSchemaAiplatformV1beta1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      metadataSchemaId: pulumi.Input.asInput<String>(map['metadataSchemaId']),
      metadataStoreId: pulumi.Input.asInput<String>(map['metadataStoreId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
