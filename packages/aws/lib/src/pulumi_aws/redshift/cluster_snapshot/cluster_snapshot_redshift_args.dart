// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ClusterSnapshot.
class ClusterSnapshotRedshiftArgs {
  /// The cluster identifier for which you want a snapshot.
  final pulumi.Input<String> clusterIdentifier;

  /// The number of days that a manual snapshot is retained. If the value is `-1`, the manual snapshot is retained indefinitely. Valid values are -1 and between `1` and `3653`.
  final pulumi.Input<int>? manualSnapshotRetentionPeriod;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A unique identifier for the snapshot that you are requesting. This identifier must be unique for all snapshots within the Amazon Web Services account.
  final pulumi.Input<String> snapshotIdentifier;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  ClusterSnapshotRedshiftArgs({
    required this.clusterIdentifier,
    this.manualSnapshotRetentionPeriod,
    this.region,
    required this.snapshotIdentifier,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterIdentifier'] = clusterIdentifier;
    final manualSnapshotRetentionPeriodValue = manualSnapshotRetentionPeriod;
    if (manualSnapshotRetentionPeriodValue != null) {
      map['manualSnapshotRetentionPeriod'] = manualSnapshotRetentionPeriodValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['snapshotIdentifier'] = snapshotIdentifier;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ClusterSnapshotRedshiftArgs.fromMap(Map<String, dynamic> map) {
    return ClusterSnapshotRedshiftArgs(
      clusterIdentifier: pulumi.Input.asInput<String>(map['clusterIdentifier']),
      manualSnapshotRetentionPeriod: pulumi.Input.asOptionalInput<int>(
          map['manualSnapshotRetentionPeriod']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      snapshotIdentifier:
          pulumi.Input.asInput<String>(map['snapshotIdentifier']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
