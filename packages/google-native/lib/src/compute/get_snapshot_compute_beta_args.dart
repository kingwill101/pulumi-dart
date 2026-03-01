// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_snapshot_compute_beta_args_doc}
/// Arguments for getSnapshot.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_snapshot_compute_beta_args_doc}
class GetSnapshotComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> snapshot;

  /// Creates a new [GetSnapshotComputeBetaArgs].
  /// [project] Optional.
  /// [snapshot] Required.
  GetSnapshotComputeBetaArgs({String? project, required String snapshot})
    : project = pulumi.Input.asOptionalInput<String>(project),
      snapshot = pulumi.Input.asInput<String>(snapshot);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': ?project, 'snapshot': snapshot};
  }

  factory GetSnapshotComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotComputeBetaArgs(
      project: map['project'] == null ? null : map['project'] as String,
      snapshot: map['snapshot'] as String,
    );
  }
}
