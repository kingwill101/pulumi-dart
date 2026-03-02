// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAutoSnapShotPoliciesAutoSnapShotPolicy {
  /// The number of database file systems set by the automatic snapshot policy.
  final pulumi.Input<int> appliedDbfsNumber;
  /// The creation time of the resource
  final pulumi.Input<String> createTime;
  /// The ID of the policy.
  final pulumi.Input<String> id;
  /// Last modification time of automatic snapshot policy
  final pulumi.Input<String> lastModified;
  /// Automatic snapshot policy ID
  final pulumi.Input<String> policyId;
  /// Automatic snapshot policy name
  final pulumi.Input<String> policyName;
  /// A collection of automatic snapshots performed on several days of the week.
  final pulumi.Input<List<String>> repeatWeekdays;
  /// Automatic snapshot retention days
  final pulumi.Input<int> retentionDays;
  /// Automatic snapshot policy status
  final pulumi.Input<String> status;
  /// Automatic snapshot policy status details
  final pulumi.Input<String> statusDetail;
  /// The set of times at which the snapshot is taken on the day the automatic snapshot is executed.
  final pulumi.Input<List<String>> timePoints;

  /// Creates a new [GetAutoSnapShotPoliciesAutoSnapShotPolicy].
  /// [appliedDbfsNumber] The number of database file systems set by the automatic snapshot policy.
  /// [createTime] The creation time of the resource
  /// [id] The ID of the policy.
  /// [lastModified] Last modification time of automatic snapshot policy
  /// [policyId] Automatic snapshot policy ID
  /// [policyName] Automatic snapshot policy name
  /// [repeatWeekdays] A collection of automatic snapshots performed on several days of the week.
  /// [retentionDays] Automatic snapshot retention days
  /// [status] Automatic snapshot policy status
  /// [statusDetail] Automatic snapshot policy status details
  /// [timePoints] The set of times at which the snapshot is taken on the day the automatic snapshot is executed.
  GetAutoSnapShotPoliciesAutoSnapShotPolicy({
    required this.appliedDbfsNumber,
    required this.createTime,
    required this.id,
    required this.lastModified,
    required this.policyId,
    required this.policyName,
    required this.repeatWeekdays,
    required this.retentionDays,
    required this.status,
    required this.statusDetail,
    required this.timePoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliedDbfsNumber': appliedDbfsNumber,
      'createTime': createTime,
      'id': id,
      'lastModified': lastModified,
      'policyId': policyId,
      'policyName': policyName,
      'repeatWeekdays': repeatWeekdays,
      'retentionDays': retentionDays,
      'status': status,
      'statusDetail': statusDetail,
      'timePoints': timePoints,
    };
  }

  factory GetAutoSnapShotPoliciesAutoSnapShotPolicy.fromMap(Map<String, dynamic> map) {
    return GetAutoSnapShotPoliciesAutoSnapShotPolicy(
      appliedDbfsNumber: (map['appliedDbfsNumber'] as int).input(),
      createTime: (map['createTime'] as String).input(),
      id: (map['id'] as String).input(),
      lastModified: (map['lastModified'] as String).input(),
      policyId: (map['policyId'] as String).input(),
      policyName: (map['policyName'] as String).input(),
      repeatWeekdays: ((map['repeatWeekdays'] as List).cast<String>()).input(),
      retentionDays: (map['retentionDays'] as int).input(),
      status: (map['status'] as String).input(),
      statusDetail: (map['statusDetail'] as String).input(),
      timePoints: ((map['timePoints'] as List).cast<String>()).input(),
    );
  }
}

