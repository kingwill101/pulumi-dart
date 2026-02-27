// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSnapshot.
class GetSnapshotArgs3 {
  final Input<String>? project;
  final Input<String> snapshot;

  GetSnapshotArgs3({
    this.project,
    required this.snapshot,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['snapshot'] = snapshot;
    return map;
  }

  factory GetSnapshotArgs3.fromMap(Map<String, dynamic> map) {
    return GetSnapshotArgs3(
      project: Input.asOptionalInput<String>(map['project']),
      snapshot: Input.asInput<String>(map['snapshot']),
    );
  }
}
