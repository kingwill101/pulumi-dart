// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getIndex.
class GetIndexFirestoreV1beta1Args {
  final pulumi.Input<String> databaseId;
  final pulumi.Input<String> indexId;
  final pulumi.Input<String>? project;

  GetIndexFirestoreV1beta1Args({
    required this.databaseId,
    required this.indexId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseId'] = databaseId;
    map['indexId'] = indexId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetIndexFirestoreV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetIndexFirestoreV1beta1Args(
      databaseId: pulumi.Input.asInput<String>(map['databaseId']),
      indexId: pulumi.Input.asInput<String>(map['indexId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
