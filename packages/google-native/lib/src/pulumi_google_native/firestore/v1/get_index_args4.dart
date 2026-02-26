// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getIndex.
class GetIndexArgs4 {
  final Input<String> collectionGroupId;
  final Input<String> databaseId;
  final Input<String> indexId;
  final Input<String>? project;

  GetIndexArgs4({
    required this.collectionGroupId,
    required this.databaseId,
    required this.indexId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collectionGroupId'] = collectionGroupId;
    map['databaseId'] = databaseId;
    map['indexId'] = indexId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetIndexArgs4.fromMap(Map<String, dynamic> map) {
    return GetIndexArgs4(
      collectionGroupId: Input.asInput<String>(map['collectionGroupId']),
      databaseId: Input.asInput<String>(map['databaseId']),
      indexId: Input.asInput<String>(map['indexId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
