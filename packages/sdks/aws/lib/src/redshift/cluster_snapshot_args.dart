// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshift_cluster_snapshot_cluster_snapshot_args_doc}
/// The set of arguments for ClusterSnapshot.
/// {@endtemplate}
/// {@macro pulumi_redshift_cluster_snapshot_cluster_snapshot_args_doc}
class ClusterSnapshotArgs {
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

  /// Creates a new [ClusterSnapshotArgs].
  /// [clusterIdentifier] The cluster identifier for which you want a snapshot.
  /// [manualSnapshotRetentionPeriod] The number of days that a manual snapshot is retained. If the value is `-1`, the manual snapshot is retained indefinitely. Valid values are -1 and between `1` and `3653`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snapshotIdentifier] A unique identifier for the snapshot that you are requesting. This identifier must be unique for all snapshots within the Amazon Web Services account.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ClusterSnapshotArgs({
    required pulumi.Output<String> clusterIdentifier,
    pulumi.Output<int>? manualSnapshotRetentionPeriod,
    pulumi.Output<String>? region,
    required pulumi.Output<String> snapshotIdentifier,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      clusterIdentifier = pulumi.Input.asInput<String>(clusterIdentifier),
      manualSnapshotRetentionPeriod = pulumi.Input.asOptionalInput<int>(manualSnapshotRetentionPeriod),
      region = pulumi.Input.asOptionalInput<String>(region),
      snapshotIdentifier = pulumi.Input.asInput<String>(snapshotIdentifier),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterIdentifier': clusterIdentifier,
      'manualSnapshotRetentionPeriod': ?manualSnapshotRetentionPeriod,
      'region': ?region,
      'snapshotIdentifier': snapshotIdentifier,
      'tags': ?tags,
    };
  }

  factory ClusterSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return ClusterSnapshotArgs(
      clusterIdentifier: pulumi.Output.create<String>(map['clusterIdentifier'] as String),
      manualSnapshotRetentionPeriod: map['manualSnapshotRetentionPeriod'] == null ? null : pulumi.Output.create<int>(map['manualSnapshotRetentionPeriod'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      snapshotIdentifier: pulumi.Output.create<String>(map['snapshotIdentifier'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

