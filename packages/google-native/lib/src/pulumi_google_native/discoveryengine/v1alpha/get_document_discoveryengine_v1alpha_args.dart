// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDocument.
class GetDocumentDiscoveryengineV1alphaArgs {
  final pulumi.Input<String> branchId;
  final pulumi.Input<String> collectionId;
  final pulumi.Input<String> dataStoreId;
  final pulumi.Input<String> documentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetDocumentDiscoveryengineV1alphaArgs({
    required this.branchId,
    required this.collectionId,
    required this.dataStoreId,
    required this.documentId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['branchId'] = branchId;
    map['collectionId'] = collectionId;
    map['dataStoreId'] = dataStoreId;
    map['documentId'] = documentId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDocumentDiscoveryengineV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetDocumentDiscoveryengineV1alphaArgs(
      branchId: pulumi.Input.asInput<String>(map['branchId']),
      collectionId: pulumi.Input.asInput<String>(map['collectionId']),
      dataStoreId: pulumi.Input.asInput<String>(map['dataStoreId']),
      documentId: pulumi.Input.asInput<String>(map['documentId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
