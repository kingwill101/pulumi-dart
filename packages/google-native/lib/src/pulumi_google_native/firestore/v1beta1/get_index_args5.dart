// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getIndex.
class GetIndexArgs5 {
  final Input<String> databaseId;
  final Input<String> indexId;
  final Input<String>? project;

  GetIndexArgs5({
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

  factory GetIndexArgs5.fromMap(Map<String, dynamic> map) {
    return GetIndexArgs5(
      databaseId: Input.asInput<String>(map['databaseId']),
      indexId: Input.asInput<String>(map['indexId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
