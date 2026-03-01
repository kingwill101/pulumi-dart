// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AutoSnapShotPolicy resources.
class AutoSnapShotPolicyState {
  /// The number of database file systems set by the automatic snapshot policy.
  final pulumi.Input<int>? appliedDbfsNumber;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// Last modification time of automatic snapshot policy
  final pulumi.Input<String>? lastModified;
  /// Automatic snapshot policy ID
  final pulumi.Input<String>? policyId;
  /// Automatic snapshot policy name
  final pulumi.Input<String>? policyName;
  /// A collection of automatic snapshots performed on several days of the week. Value range: 1~7, for example, `1` means Monday.
  final pulumi.Input<List<String>>? repeatWeekdays;
  /// Automatic snapshot retention days.
  final pulumi.Input<int>? retentionDays;
  /// Automatic snapshot policy status
  final pulumi.Input<String>? status;
  /// Automatic snapshot policy status details
  final pulumi.Input<String>? statusDetail;
  /// The set of times at which the snapshot is taken on the day the automatic snapshot is executed. Value range: `00` to `23`, representing 24 time points from 00:00 to 23:00, for example, `01` indicates 01:00.
  final pulumi.Input<List<String>>? timePoints;

  /// Creates a new [AutoSnapShotPolicyState].
  /// [appliedDbfsNumber] The number of database file systems set by the automatic snapshot policy.
  /// [createTime] The creation time of the resource
  /// [lastModified] Last modification time of automatic snapshot policy
  /// [policyId] Automatic snapshot policy ID
  /// [policyName] Automatic snapshot policy name
  /// [repeatWeekdays] A collection of automatic snapshots performed on several days of the week. Value range: 1~7, for example, `1` means Monday.
  /// [retentionDays] Automatic snapshot retention days.
  /// [status] Automatic snapshot policy status
  /// [statusDetail] Automatic snapshot policy status details
  /// [timePoints] The set of times at which the snapshot is taken on the day the automatic snapshot is executed. Value range: `00` to `23`, representing 24 time points from 00:00 to 23:00, for example, `01` indicates 01:00.
  AutoSnapShotPolicyState({
    pulumi.Output<int>? appliedDbfsNumber,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? lastModified,
    pulumi.Output<String>? policyId,
    pulumi.Output<String>? policyName,
    pulumi.Output<List<String>>? repeatWeekdays,
    pulumi.Output<int>? retentionDays,
    pulumi.Output<String>? status,
    pulumi.Output<String>? statusDetail,
    pulumi.Output<List<String>>? timePoints,
  }) :
      appliedDbfsNumber = pulumi.Input.asOptionalInput<int>(appliedDbfsNumber),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      lastModified = pulumi.Input.asOptionalInput<String>(lastModified),
      policyId = pulumi.Input.asOptionalInput<String>(policyId),
      policyName = pulumi.Input.asOptionalInput<String>(policyName),
      repeatWeekdays = pulumi.Input.asOptionalInput<List<String>>(repeatWeekdays),
      retentionDays = pulumi.Input.asOptionalInput<int>(retentionDays),
      status = pulumi.Input.asOptionalInput<String>(status),
      statusDetail = pulumi.Input.asOptionalInput<String>(statusDetail),
      timePoints = pulumi.Input.asOptionalInput<List<String>>(timePoints);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliedDbfsNumber': ?appliedDbfsNumber,
      'createTime': ?createTime,
      'lastModified': ?lastModified,
      'policyId': ?policyId,
      'policyName': ?policyName,
      'repeatWeekdays': ?repeatWeekdays,
      'retentionDays': ?retentionDays,
      'status': ?status,
      'statusDetail': ?statusDetail,
      'timePoints': ?timePoints,
    };
  }

  factory AutoSnapShotPolicyState.fromMap(Map<String, dynamic> map) {
    return AutoSnapShotPolicyState(
      appliedDbfsNumber: map['appliedDbfsNumber'] == null ? null : pulumi.Output.create<int>(map['appliedDbfsNumber'] as int),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      lastModified: map['lastModified'] == null ? null : pulumi.Output.create<String>(map['lastModified'] as String),
      policyId: map['policyId'] == null ? null : pulumi.Output.create<String>(map['policyId'] as String),
      policyName: map['policyName'] == null ? null : pulumi.Output.create<String>(map['policyName'] as String),
      repeatWeekdays: map['repeatWeekdays'] == null ? null : pulumi.Output.create<List<String>>((map['repeatWeekdays'] as List).cast<String>()),
      retentionDays: map['retentionDays'] == null ? null : pulumi.Output.create<int>(map['retentionDays'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      statusDetail: map['statusDetail'] == null ? null : pulumi.Output.create<String>(map['statusDetail'] as String),
      timePoints: map['timePoints'] == null ? null : pulumi.Output.create<List<String>>((map['timePoints'] as List).cast<String>()),
    );
  }
}

