// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_docdb_cluster_snapshot_cluster_snapshot_args_doc}
/// The set of arguments for ClusterSnapshot.
/// {@endtemplate}
/// {@macro pulumi_docdb_cluster_snapshot_cluster_snapshot_args_doc}
class ClusterSnapshotArgs {
  /// The DocumentDB Cluster Identifier from which to take the snapshot.
  final pulumi.Input<String> dbClusterIdentifier;
  /// The Identifier for the snapshot.
  final pulumi.Input<String> dbClusterSnapshotIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ClusterSnapshotArgs].
  /// [dbClusterIdentifier] The DocumentDB Cluster Identifier from which to take the snapshot.
  /// [dbClusterSnapshotIdentifier] The Identifier for the snapshot.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ClusterSnapshotArgs({
    required pulumi.Output<String> dbClusterIdentifier,
    required pulumi.Output<String> dbClusterSnapshotIdentifier,
    pulumi.Output<String>? region,
  }) :
      dbClusterIdentifier = pulumi.Input.asInput<String>(dbClusterIdentifier),
      dbClusterSnapshotIdentifier = pulumi.Input.asInput<String>(dbClusterSnapshotIdentifier),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterIdentifier': dbClusterIdentifier,
      'dbClusterSnapshotIdentifier': dbClusterSnapshotIdentifier,
      'region': ?region,
    };
  }

  factory ClusterSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return ClusterSnapshotArgs(
      dbClusterIdentifier: pulumi.Output.create<String>(map['dbClusterIdentifier'] as String),
      dbClusterSnapshotIdentifier: pulumi.Output.create<String>(map['dbClusterSnapshotIdentifier'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

