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
    required this.dbClusterIdentifier,
    required this.dbClusterSnapshotIdentifier,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterIdentifier': dbClusterIdentifier,
      'dbClusterSnapshotIdentifier': dbClusterSnapshotIdentifier,
      'region': ?region,
    };
  }

  factory ClusterSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return ClusterSnapshotArgs(
      dbClusterIdentifier: pulumi.Input.fromValue(
        map['dbClusterIdentifier'] as String,
      ),
      dbClusterSnapshotIdentifier: pulumi.Input.fromValue(
        map['dbClusterSnapshotIdentifier'] as String,
      ),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
