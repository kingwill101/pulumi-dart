// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSnapshot.
class GetSnapshotComputeAlphaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> snapshot;

  GetSnapshotComputeAlphaArgs({
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

  factory GetSnapshotComputeAlphaArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotComputeAlphaArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      snapshot: pulumi.Input.asInput<String>(map['snapshot']),
    );
  }
}
