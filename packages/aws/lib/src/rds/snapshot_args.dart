// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_snapshot_snapshot_args_doc}
/// The set of arguments for Snapshot.
/// {@endtemplate}
/// {@macro pulumi_rds_snapshot_snapshot_args_doc}
class SnapshotArgs {
  /// The DB Instance Identifier from which to take the snapshot.
  final pulumi.Input<String> dbInstanceIdentifier;
  /// The Identifier for the snapshot.
  final pulumi.Input<String> dbSnapshotIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  final pulumi.Input<List<String>>? sharedAccounts;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SnapshotArgs].
  /// [dbInstanceIdentifier] The DB Instance Identifier from which to take the snapshot.
  /// [dbSnapshotIdentifier] The Identifier for the snapshot.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sharedAccounts] List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  SnapshotArgs({
    required String dbInstanceIdentifier,
    required String dbSnapshotIdentifier,
    String? region,
    List<String>? sharedAccounts,
    Map<String, String>? tags,
  }) :
      dbInstanceIdentifier = pulumi.Input.asInput<String>(dbInstanceIdentifier),
      dbSnapshotIdentifier = pulumi.Input.asInput<String>(dbSnapshotIdentifier),
      region = pulumi.Input.asOptionalInput<String>(region),
      sharedAccounts = pulumi.Input.asOptionalInput<List<String>>(sharedAccounts),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceIdentifier': dbInstanceIdentifier,
      'dbSnapshotIdentifier': dbSnapshotIdentifier,
      'region': ?region,
      'sharedAccounts': ?sharedAccounts,
      'tags': ?tags,
    };
  }

  factory SnapshotArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs(
      dbInstanceIdentifier: map['dbInstanceIdentifier'] as String,
      dbSnapshotIdentifier: map['dbSnapshotIdentifier'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      sharedAccounts: map['sharedAccounts'] == null ? null : (map['sharedAccounts'] as List).cast<String>(),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

