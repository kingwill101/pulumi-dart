// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_file_v1_get_snapshot_args_doc}
/// Arguments for getSnapshot.
/// {@endtemplate}
/// {@macro pulumi_file_v1_get_snapshot_args_doc}
class GetSnapshotArgs {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> snapshotId;

  /// Creates a new [GetSnapshotArgs].
  /// [instanceId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [snapshotId] Required.
  GetSnapshotArgs({
    required String instanceId,
    required String location,
    String? project,
    required String snapshotId,
  }) : instanceId = pulumi.Input.asInput<String>(instanceId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       snapshotId = pulumi.Input.asInput<String>(snapshotId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'location': location,
      'project': ?project,
      'snapshotId': snapshotId,
    };
  }

  factory GetSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotArgs(
      instanceId: map['instanceId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      snapshotId: map['snapshotId'] as String,
    );
  }
}
