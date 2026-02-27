// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSnapshot.
class GetSnapshotArgs7 {
  final Input<String>? project;
  final Input<String> snapshotId;

  GetSnapshotArgs7({
    this.project,
    required this.snapshotId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['snapshotId'] = snapshotId;
    return map;
  }

  factory GetSnapshotArgs7.fromMap(Map<String, dynamic> map) {
    return GetSnapshotArgs7(
      project: Input.asOptionalInput<String>(map['project']),
      snapshotId: Input.asInput<String>(map['snapshotId']),
    );
  }
}
