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
  AutoSnapshotPolicyState({
    pulumi.Output<String>? autoSnapshotPolicyName,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? fileSystemType,
    pulumi.Output<List<String>>? repeatWeekdays,
    pulumi.Output<int>? retentionDays,
    pulumi.Output<String>? status,
    pulumi.Output<List<String>>? timePoints,
  }) :
      autoSnapshotPolicyName = pulumi.Input.asOptionalInput<String>(autoSnapshotPolicyName),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      fileSystemType = pulumi.Input.asOptionalInput<String>(fileSystemType),
      repeatWeekdays = pulumi.Input.asOptionalInput<List<String>>(repeatWeekdays),
      retentionDays = pulumi.Input.asOptionalInput<int>(retentionDays),
      status = pulumi.Input.asOptionalInput<String>(status),
      timePoints = pulumi.Input.asOptionalInput<List<String>>(timePoints);

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
      autoSnapshotPolicyName: map['autoSnapshotPolicyName'] == null ? null : pulumi.Output.create<String>(map['autoSnapshotPolicyName'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      fileSystemType: map['fileSystemType'] == null ? null : pulumi.Output.create<String>(map['fileSystemType'] as String),
      repeatWeekdays: map['repeatWeekdays'] == null ? null : pulumi.Output.create<List<String>>((map['repeatWeekdays'] as List).cast<String>()),
      retentionDays: map['retentionDays'] == null ? null : pulumi.Output.create<int>(map['retentionDays'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      timePoints: map['timePoints'] == null ? null : pulumi.Output.create<List<String>>((map['timePoints'] as List).cast<String>()),
    );
  }
}

