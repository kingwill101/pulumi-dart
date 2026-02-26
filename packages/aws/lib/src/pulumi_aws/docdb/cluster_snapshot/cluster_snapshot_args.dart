// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ClusterSnapshot.
class ClusterSnapshotArgs {
  /// The DocumentDB Cluster Identifier from which to take the snapshot.
  final Input<String> dbClusterIdentifier;

  /// The Identifier for the snapshot.
  final Input<String> dbClusterSnapshotIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  ClusterSnapshotArgs({
    required this.dbClusterIdentifier,
    required this.dbClusterSnapshotIdentifier,
    this.region,
  });

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
      dbClusterIdentifier: Input.asInput<String>(map['dbClusterIdentifier']),
      dbClusterSnapshotIdentifier:
          Input.asInput<String>(map['dbClusterSnapshotIdentifier']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
