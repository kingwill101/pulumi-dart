// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ClusterSnapshot.
class ClusterSnapshotArgs3 {
  /// The DB Cluster Identifier from which to take the snapshot.
  final Input<String> dbClusterIdentifier;

  /// The Identifier for the snapshot.
  final Input<String> dbClusterSnapshotIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  final Input<List<String>>? sharedAccounts;

  /// A map of tags to assign to the DB cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ClusterSnapshotArgs3({
    required this.dbClusterIdentifier,
    required this.dbClusterSnapshotIdentifier,
    this.region,
    this.sharedAccounts,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dbClusterIdentifier'] = dbClusterIdentifier;
    map['dbClusterSnapshotIdentifier'] = dbClusterSnapshotIdentifier;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sharedAccountsValue = sharedAccounts;
    if (sharedAccountsValue != null) {
      map['sharedAccounts'] = sharedAccountsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ClusterSnapshotArgs3.fromMap(Map<String, dynamic> map) {
    return ClusterSnapshotArgs3(
      dbClusterIdentifier: Input.asInput<String>(map['dbClusterIdentifier']),
      dbClusterSnapshotIdentifier:
          Input.asInput<String>(map['dbClusterSnapshotIdentifier']),
      region: Input.asOptionalInput<String>(map['region']),
      sharedAccounts:
          Input.asOptionalInput<List<String>>(map['sharedAccounts']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
