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
    required pulumi.Output<String> namespaceName,
    pulumi.Output<String>? region,
    pulumi.Output<int>? retentionPeriod,
    required pulumi.Output<String> snapshotName,
  }) :
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      region = pulumi.Input.asOptionalInput<String>(region),
      retentionPeriod = pulumi.Input.asOptionalInput<int>(retentionPeriod),
      snapshotName = pulumi.Input.asInput<String>(snapshotName);

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
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      retentionPeriod: map['retentionPeriod'] == null ? null : pulumi.Output.create<int>(map['retentionPeriod'] as int),
      snapshotName: pulumi.Output.create<String>(map['snapshotName'] as String),
    );
  }
}

