// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDocument.
class GetDocumentArgs4 {
  final Input<String> branchId;
  final Input<String> collectionId;
  final Input<String> dataStoreId;
  final Input<String> documentId;
  final Input<String> location;
  final Input<String>? project;

  GetDocumentArgs4({
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

  factory GetDocumentArgs4.fromMap(Map<String, dynamic> map) {
    return GetDocumentArgs4(
      branchId: Input.asInput<String>(map['branchId']),
      collectionId: Input.asInput<String>(map['collectionId']),
      dataStoreId: Input.asInput<String>(map['dataStoreId']),
      documentId: Input.asInput<String>(map['documentId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
