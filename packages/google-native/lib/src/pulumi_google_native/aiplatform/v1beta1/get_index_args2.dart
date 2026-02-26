// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getIndex.
class GetIndexArgs2 {
  final Input<String> indexId;
  final Input<String> location;
  final Input<String>? project;

  GetIndexArgs2({
    required this.indexId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['indexId'] = indexId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetIndexArgs2.fromMap(Map<String, dynamic> map) {
    return GetIndexArgs2(
      indexId: Input.asInput<String>(map['indexId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
