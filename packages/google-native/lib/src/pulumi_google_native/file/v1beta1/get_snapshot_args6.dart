// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSnapshot.
class GetSnapshotArgs6 {
  final Input<String> instanceId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> snapshotId;

  GetSnapshotArgs6({
    required this.instanceId,
    required this.location,
    this.project,
    required this.snapshotId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['snapshotId'] = snapshotId;
    return map;
  }

  factory GetSnapshotArgs6.fromMap(Map<String, dynamic> map) {
    return GetSnapshotArgs6(
      instanceId: Input.asInput<String>(map['instanceId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      snapshotId: Input.asInput<String>(map['snapshotId']),
    );
  }
}
