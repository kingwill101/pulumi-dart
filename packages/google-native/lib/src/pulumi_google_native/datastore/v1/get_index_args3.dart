// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getIndex.
class GetIndexArgs3 {
  final Input<String> indexId;
  final Input<String>? project;

  GetIndexArgs3({
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

  factory GetIndexArgs3.fromMap(Map<String, dynamic> map) {
    return GetIndexArgs3(
      indexId: Input.asInput<String>(map['indexId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
