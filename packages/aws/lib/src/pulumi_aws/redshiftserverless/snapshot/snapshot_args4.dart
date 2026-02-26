// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Snapshot.
class SnapshotArgs4 {
  /// The namespace to create a snapshot for.
  final Input<String> namespaceName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// How long to retain the created snapshot. Default value is `-1`.
  final Input<int>? retentionPeriod;

  /// The name of the snapshot.
  final Input<String> snapshotName;

  SnapshotArgs4({
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

  factory SnapshotArgs4.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs4(
      namespaceName: Input.asInput<String>(map['namespaceName']),
      region: Input.asOptionalInput<String>(map['region']),
      retentionPeriod: Input.asOptionalInput<int>(map['retentionPeriod']),
      snapshotName: Input.asInput<String>(map['snapshotName']),
    );
  }
}
