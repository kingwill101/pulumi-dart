// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AutoSnapshotPolicy resources.
class AutoSnapshotPolicyState {
  /// The name of the automatic snapshot policy. Limits:
  /// - The name must be `2` to `128` characters in length,
  /// - The name must start with a letter.
  /// - The name can contain digits, colons (:), underscores (_), and hyphens (-). The name cannot start with `http://` or `https://`.
  /// - The value of this parameter is empty by default.
  final pulumi.Input<String>? autoSnapshotPolicyName;
  /// Creation time.
  final pulumi.Input<String>? createTime;
  /// The file system type.
  final pulumi.Input<String>? fileSystemType;
  /// The day on which an auto snapshot is created.
  /// - A maximum of 7 time points can be selected.
  /// - The format is  an JSON array of ["1", "2", … "7"]  and the time points are separated by commas (,).
  final pulumi.Input<List<String>>? repeatWeekdays;
  /// The number of days for which you want to retain auto snapshots. Unit: days. Valid values:
  /// - `-1`: the default value. Auto snapshots are permanently retained. After the number of auto snapshots exceeds the upper limit, the earliest auto snapshot is automatically deleted.
  final pulumi.Input<int>? retentionDays;
  /// The status of the automatic snapshot policy.
  final pulumi.Input<String>? status;
  /// The point in time at which an auto snapshot is created.
  /// - A maximum of 24 time points can be selected.
  /// - The format is  an JSON array of ["0", "1", … "23"] and the time points are separated by commas (,).
  final pulumi.Input<List<String>>? timePoints;

  /// Creates a new [AutoSnapshotPolicyState].
  /// [autoSnapshotPolicyName] The name of the automatic snapshot policy. Limits:
  /// [createTime] Creation time.
  /// [fileSystemType] The file system type.
  /// [repeatWeekdays] The day on which an auto snapshot is created.
  /// [retentionDays] The number of days for which you want to retain auto snapshots. Unit: days. Valid values:
  /// [status] The status of the automatic snapshot policy.
  /// [timePoints] The point in time at which an auto snapshot is created.
  const AutoSnapshotPolicyState({
    this.autoSnapshotPolicyName,
    this.createTime,
    this.fileSystemType,
    this.repeatWeekdays,
    this.retentionDays,
    this.status,
    this.timePoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoSnapshotPolicyName': ?autoSnapshotPolicyName,
      'createTime': ?createTime,
      'fileSystemType': ?fileSystemType,
      'repeatWeekdays': ?repeatWeekdays,
      'retentionDays': ?retentionDays,
      'status': ?status,
      'timePoints': ?timePoints,
    };
  }

  factory AutoSnapshotPolicyState.fromMap(Map<String, dynamic> map) {
    return AutoSnapshotPolicyState(
      autoSnapshotPolicyName: (() { final guardedValue = map['autoSnapshotPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSystemType: (() { final guardedValue = map['fileSystemType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repeatWeekdays: (() { final guardedValue = map['repeatWeekdays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      retentionDays: (() { final guardedValue = map['retentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timePoints: (() { final guardedValue = map['timePoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

