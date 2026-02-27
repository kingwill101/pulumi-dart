// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSnapshot.
class GetSnapshotComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> snapshot;

  GetSnapshotComputeBetaArgs({
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

  factory GetSnapshotComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotComputeBetaArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      snapshot: pulumi.Input.asInput<String>(map['snapshot']),
    );
  }
}
