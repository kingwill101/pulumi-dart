// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSnapshot.
class GetSnapshotFileV1Args {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> snapshotId;

  GetSnapshotFileV1Args({
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

  factory GetSnapshotFileV1Args.fromMap(Map<String, dynamic> map) {
    return GetSnapshotFileV1Args(
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      snapshotId: pulumi.Input.asInput<String>(map['snapshotId']),
    );
  }
}
