// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_instant_snapshot_compute_beta_args_doc}
/// Arguments for getInstantSnapshot.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_instant_snapshot_compute_beta_args_doc}
class GetInstantSnapshotComputeBetaArgs {
  final pulumi.Input<String> instantSnapshot;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetInstantSnapshotComputeBetaArgs].
  /// [instantSnapshot] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetInstantSnapshotComputeBetaArgs({
    required String instantSnapshot,
    String? project,
    required String zone,
  }) : instantSnapshot = pulumi.Input.asInput<String>(instantSnapshot),
       project = pulumi.Input.asOptionalInput<String>(project),
       zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instantSnapshot': instantSnapshot,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetInstantSnapshotComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetInstantSnapshotComputeBetaArgs(
      instantSnapshot: map['instantSnapshot'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      zone: map['zone'] as String,
    );
  }
}
