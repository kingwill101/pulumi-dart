// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Snapshot.
class SnapshotRedshiftserverlessArgs {
  /// The namespace to create a snapshot for.
  final pulumi.Input<String> namespaceName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// How long to retain the created snapshot. Default value is `-1`.
  final pulumi.Input<int>? retentionPeriod;

  /// The name of the snapshot.
  final pulumi.Input<String> snapshotName;

  SnapshotRedshiftserverlessArgs({
    required this.namespaceName,
    this.region,
    this.retentionPeriod,
    required this.snapshotName,
  });

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

  factory SnapshotRedshiftserverlessArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotRedshiftserverlessArgs(
      namespaceName: pulumi.Input.asInput<String>(map['namespaceName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      retentionPeriod:
          pulumi.Input.asOptionalInput<int>(map['retentionPeriod']),
      snapshotName: pulumi.Input.asInput<String>(map['snapshotName']),
    );
  }
}
