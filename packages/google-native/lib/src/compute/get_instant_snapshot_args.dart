// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_instant_snapshot_args_doc}
/// Arguments for getInstantSnapshot.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_instant_snapshot_args_doc}
class GetInstantSnapshotArgs {
  final pulumi.Input<String> instantSnapshot;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetInstantSnapshotArgs].
  /// [instantSnapshot] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetInstantSnapshotArgs({
    required String instantSnapshot,
    String? project,
    required String zone,
  })  : instantSnapshot = pulumi.Input.asInput<String>(instantSnapshot),
        project = pulumi.Input.asOptionalInput<String>(project),
        zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instantSnapshot'] = instantSnapshot;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['zone'] = zone;
    return map;
  }

  factory GetInstantSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetInstantSnapshotArgs(
      instantSnapshot: map['instantSnapshot'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      zone: map['zone'] as String,
    );
  }
}
