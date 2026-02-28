// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_region_instant_snapshot_compute_beta_args_doc}
/// Arguments for getRegionInstantSnapshot.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_region_instant_snapshot_compute_beta_args_doc}
class GetRegionInstantSnapshotComputeBetaArgs {
  final pulumi.Input<String> instantSnapshot;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionInstantSnapshotComputeBetaArgs].
  /// [instantSnapshot] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionInstantSnapshotComputeBetaArgs({
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

  factory GetRegionInstantSnapshotComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstantSnapshotComputeBetaArgs(
      instantSnapshot: map['instantSnapshot'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}
