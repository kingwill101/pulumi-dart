// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_region_instant_snapshot_args_doc}
/// Arguments for getRegionInstantSnapshot.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_region_instant_snapshot_args_doc}
class GetRegionInstantSnapshotArgs {
  final pulumi.Input<String> instantSnapshot;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionInstantSnapshotArgs].
  /// [instantSnapshot] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionInstantSnapshotArgs({
    required String instantSnapshot,
    String? project,
    required String region,
  })  : instantSnapshot = pulumi.Input.asInput<String>(instantSnapshot),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instantSnapshot'] = instantSnapshot;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetRegionInstantSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionInstantSnapshotArgs(
      instantSnapshot: map['instantSnapshot'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}
