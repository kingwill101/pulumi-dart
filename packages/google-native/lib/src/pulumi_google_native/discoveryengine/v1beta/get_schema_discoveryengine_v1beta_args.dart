// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSchema.
class GetSchemaDiscoveryengineV1betaArgs {
  final pulumi.Input<String> collectionId;
  final pulumi.Input<String> dataStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> schemaId;

  GetSchemaDiscoveryengineV1betaArgs({
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

  factory GetSchemaDiscoveryengineV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetSchemaDiscoveryengineV1betaArgs(
      collectionId: pulumi.Input.asInput<String>(map['collectionId']),
      dataStoreId: pulumi.Input.asInput<String>(map['dataStoreId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      schemaId: pulumi.Input.asInput<String>(map['schemaId']),
    );
  }
}
