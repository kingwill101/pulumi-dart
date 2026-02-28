// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_neptune_cluster_snapshot_cluster_snapshot_args_doc}
/// The set of arguments for ClusterSnapshot.
/// {@endtemplate}
/// {@macro pulumi_neptune_cluster_snapshot_cluster_snapshot_args_doc}
class ClusterSnapshotArgs {
  /// The DB Cluster Identifier from which to take the snapshot.
  final pulumi.Input<String> dbClusterIdentifier;

  /// The Identifier for the snapshot.
  final pulumi.Input<String> dbClusterSnapshotIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ClusterSnapshotArgs].
  /// [dbClusterIdentifier] The DB Cluster Identifier from which to take the snapshot.
  /// [dbClusterSnapshotIdentifier] The Identifier for the snapshot.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ClusterSnapshotArgs({
    required String dbClusterIdentifier,
    required String dbClusterSnapshotIdentifier,
    String? region,
  })  : dbClusterIdentifier = pulumi.Input.asInput<String>(dbClusterIdentifier),
        dbClusterSnapshotIdentifier =
            pulumi.Input.asInput<String>(dbClusterSnapshotIdentifier),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dbClusterIdentifier'] = dbClusterIdentifier;
    map['dbClusterSnapshotIdentifier'] = dbClusterSnapshotIdentifier;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ClusterSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return ClusterSnapshotArgs(
      dbClusterIdentifier: map['dbClusterIdentifier'] as String,
      dbClusterSnapshotIdentifier: map['dbClusterSnapshotIdentifier'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
