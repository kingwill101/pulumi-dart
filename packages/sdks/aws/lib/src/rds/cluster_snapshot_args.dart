// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_cluster_snapshot_cluster_snapshot_args_doc}
/// The set of arguments for ClusterSnapshot.
/// {@endtemplate}
/// {@macro pulumi_rds_cluster_snapshot_cluster_snapshot_args_doc}
class ClusterSnapshotArgs {
  /// The DB Cluster Identifier from which to take the snapshot.
  final pulumi.Input<String> dbClusterIdentifier;
  /// The Identifier for the snapshot.
  final pulumi.Input<String> dbClusterSnapshotIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  final pulumi.Input<List<String>>? sharedAccounts;
  /// A map of tags to assign to the DB cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ClusterSnapshotArgs].
  /// [dbClusterIdentifier] The DB Cluster Identifier from which to take the snapshot.
  /// [dbClusterSnapshotIdentifier] The Identifier for the snapshot.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sharedAccounts] List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  /// [tags] A map of tags to assign to the DB cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ClusterSnapshotArgs({
    required pulumi.Output<String> dbClusterIdentifier,
    required pulumi.Output<String> dbClusterSnapshotIdentifier,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? sharedAccounts,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      dbClusterIdentifier = pulumi.Input.asInput<String>(dbClusterIdentifier),
      dbClusterSnapshotIdentifier = pulumi.Input.asInput<String>(dbClusterSnapshotIdentifier),
      region = pulumi.Input.asOptionalInput<String>(region),
      sharedAccounts = pulumi.Input.asOptionalInput<List<String>>(sharedAccounts),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterIdentifier': dbClusterIdentifier,
      'dbClusterSnapshotIdentifier': dbClusterSnapshotIdentifier,
      'region': ?region,
      'sharedAccounts': ?sharedAccounts,
      'tags': ?tags,
    };
  }

  factory ClusterSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return ClusterSnapshotArgs(
      dbClusterIdentifier: pulumi.Output.create<String>(map['dbClusterIdentifier'] as String),
      dbClusterSnapshotIdentifier: pulumi.Output.create<String>(map['dbClusterSnapshotIdentifier'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sharedAccounts: map['sharedAccounts'] == null ? null : pulumi.Output.create<List<String>>((map['sharedAccounts'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

