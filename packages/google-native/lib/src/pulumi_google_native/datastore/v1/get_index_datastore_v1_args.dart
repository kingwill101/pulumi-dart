// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getIndex.
class GetIndexDatastoreV1Args {
  final pulumi.Input<String> indexId;
  final pulumi.Input<String>? project;

  GetIndexDatastoreV1Args({
    required this.indexId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['indexId'] = indexId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetIndexDatastoreV1Args.fromMap(Map<String, dynamic> map) {
    return GetIndexDatastoreV1Args(
      indexId: pulumi.Input.asInput<String>(map['indexId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
