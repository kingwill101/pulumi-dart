// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_snapshot_compute_v1_args_doc}
/// Arguments for getSnapshot.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_snapshot_compute_v1_args_doc}
class GetSnapshotComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> snapshot;

  /// Creates a new [GetSnapshotComputeV1Args].
  /// [project] Optional.
  /// [snapshot] Required.
  GetSnapshotComputeV1Args({
    String? project,
    required String snapshot,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        snapshot = pulumi.Input.asInput<String>(snapshot);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['snapshot'] = snapshot;
    return map;
  }

  factory GetSnapshotComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetSnapshotComputeV1Args(
      project: map['project'] == null ? null : map['project'] as String,
      snapshot: map['snapshot'] as String,
    );
  }
}
