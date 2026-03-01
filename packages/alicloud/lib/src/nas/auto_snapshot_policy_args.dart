// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nas_auto_snapshot_policy_auto_snapshot_policy_args_doc}
/// The set of arguments for AutoSnapshotPolicy.
/// {@endtemplate}
/// {@macro pulumi_nas_auto_snapshot_policy_auto_snapshot_policy_args_doc}
class AutoSnapshotPolicyArgs {
  /// The name of the automatic snapshot policy. Limits:
  /// - The name must be `2` to `128` characters in length,
  /// - The name must start with a letter.
  /// - The name can contain digits, colons (:), underscores (_), and hyphens (-). The name cannot start with `http://` or `https://`.
  /// - The value of this parameter is empty by default.
  final pulumi.Input<String>? autoSnapshotPolicyName;
  /// The file system type.
  final pulumi.Input<String>? fileSystemType;
  /// The day on which an auto snapshot is created.
  /// - A maximum of 7 time points can be selected.
  /// - The format is  an JSON array of ["1", "2", … "7"]  and the time points are separated by commas (,).
  final pulumi.Input<List<String>> repeatWeekdays;
  /// The number of days for which you want to retain auto snapshots. Unit: days. Valid values:
  /// - `-1`: the default value. Auto snapshots are permanently retained. After the number of auto snapshots exceeds the upper limit, the earliest auto snapshot is automatically deleted.
  final pulumi.Input<int>? retentionDays;
  /// The point in time at which an auto snapshot is created.
  /// - A maximum of 24 time points can be selected.
  /// - The format is  an JSON array of ["0", "1", … "23"] and the time points are separated by commas (,).
  final pulumi.Input<List<String>> timePoints;

  /// Creates a new [AutoSnapshotPolicyArgs].
  /// [autoSnapshotPolicyName] The name of the automatic snapshot policy. Limits:
  /// [fileSystemType] The file system type.
  /// [repeatWeekdays] The day on which an auto snapshot is created.
  /// [retentionDays] The number of days for which you want to retain auto snapshots. Unit: days. Valid values:
  /// [timePoints] The point in time at which an auto snapshot is created.
  AutoSnapshotPolicyArgs({
    String? autoSnapshotPolicyName,
    String? fileSystemType,
    required List<String> repeatWeekdays,
    int? retentionDays,
    required List<String> timePoints,
  }) :
      autoSnapshotPolicyName = pulumi.Input.asOptionalInput<String>(autoSnapshotPolicyName),
      fileSystemType = pulumi.Input.asOptionalInput<String>(fileSystemType),
      repeatWeekdays = pulumi.Input.asInput<List<String>>(repeatWeekdays),
      retentionDays = pulumi.Input.asOptionalInput<int>(retentionDays),
      timePoints = pulumi.Input.asInput<List<String>>(timePoints);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoSnapshotPolicyName': ?autoSnapshotPolicyName,
      'fileSystemType': ?fileSystemType,
      'repeatWeekdays': repeatWeekdays,
      'retentionDays': ?retentionDays,
      'timePoints': timePoints,
    };
  }

  factory AutoSnapshotPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AutoSnapshotPolicyArgs(
      autoSnapshotPolicyName: map['autoSnapshotPolicyName'] == null ? null : map['autoSnapshotPolicyName'] as String,
      fileSystemType: map['fileSystemType'] == null ? null : map['fileSystemType'] as String,
      repeatWeekdays: (map['repeatWeekdays'] as List).cast<String>(),
      retentionDays: map['retentionDays'] == null ? null : map['retentionDays'] as int,
      timePoints: (map['timePoints'] as List).cast<String>(),
    );
  }
}

