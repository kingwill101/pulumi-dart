// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSnapshot.
class GetSnapshotPubsubV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> snapshotId;

  GetSnapshotPubsubV1Args({
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

  factory GetSnapshotPubsubV1Args.fromMap(Map<String, dynamic> map) {
    return GetSnapshotPubsubV1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      snapshotId: pulumi.Input.asInput<String>(map['snapshotId']),
    );
  }
}
