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
    required String namespaceName,
    String? region,
    int? retentionPeriod,
    required String snapshotName,
  })  : namespaceName = pulumi.Input.asInput<String>(namespaceName),
        region = pulumi.Input.asOptionalInput<String>(region),
        retentionPeriod = pulumi.Input.asOptionalInput<int>(retentionPeriod),
        snapshotName = pulumi.Input.asInput<String>(snapshotName);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['namespaceName'] = namespaceName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final retentionPeriodValue = retentionPeriod;
    if (retentionPeriodValue != null) {
      map['retentionPeriod'] = retentionPeriodValue;
    }
    map['snapshotName'] = snapshotName;
    return map;
  }

  factory SnapshotArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs(
      namespaceName: map['namespaceName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      retentionPeriod:
          map['retentionPeriod'] == null ? null : map['retentionPeriod'] as int,
      snapshotName: map['snapshotName'] as String,
    );
  }
}
