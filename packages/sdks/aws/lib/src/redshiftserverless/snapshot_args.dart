// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshiftserverless_snapshot_snapshot_args_doc}
/// The set of arguments for Snapshot.
/// {@endtemplate}
/// {@macro pulumi_redshiftserverless_snapshot_snapshot_args_doc}
class SnapshotArgs {
  /// The namespace to create a snapshot for.
  final pulumi.Input<String> namespaceName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// How long to retain the created snapshot. Default value is `-1`.
  final pulumi.Input<int>? retentionPeriod;
  /// The name of the snapshot.
  final pulumi.Input<String> snapshotName;

  /// Creates a new [SnapshotArgs].
  /// [namespaceName] The namespace to create a snapshot for.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retentionPeriod] How long to retain the created snapshot. Default value is `-1`.
  /// [snapshotName] The name of the snapshot.
  SnapshotArgs({
    required this.namespaceName,
    this.region,
    this.retentionPeriod,
    required this.snapshotName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'region': ?region,
      'retentionPeriod': ?retentionPeriod,
      'snapshotName': snapshotName,
    };
  }

  factory SnapshotArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs(
      namespaceName: (map['namespaceName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      retentionPeriod: map['retentionPeriod'] == null ? null : (map['retentionPeriod'] as int).input(),
      snapshotName: (map['snapshotName'] as String).input(),
    );
  }
}

