// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsub_v1_get_snapshot_args_doc}
/// Arguments for getSnapshot.
/// {@endtemplate}
/// {@macro pulumi_pubsub_v1_get_snapshot_args_doc}
class GetSnapshotArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> snapshotId;

  /// Creates a new [GetSnapshotArgs].
  /// [project] Optional.
  /// [snapshotId] Required.
  GetSnapshotArgs({
    String? project,
    required String snapshotId,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      snapshotId = pulumi.Input.asInput<String>(snapshotId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'snapshotId': snapshotId,
    };
  }

  factory GetSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotArgs(
      project: map['project'] == null ? null : map['project'] as String,
      snapshotId: map['snapshotId'] as String,
    );
  }
}

