// ignore_for_file: unused_element, unnecessary_cast


class GetAutoSnapShotPoliciesAutoSnapShotPolicy {
  /// The number of database file systems set by the automatic snapshot policy.
  final int appliedDbfsNumber;
  /// The creation time of the resource
  final String createTime;
  /// The ID of the policy.
  final String id;
  /// Last modification time of automatic snapshot policy
  final String lastModified;
  /// Automatic snapshot policy ID
  final String policyId;
  /// Automatic snapshot policy name
  final String policyName;
  /// A collection of automatic snapshots performed on several days of the week.
  final List<String> repeatWeekdays;
  /// Automatic snapshot retention days
  final int retentionDays;
  /// Automatic snapshot policy status
  final String status;
  /// Automatic snapshot policy status details
  final String statusDetail;
  /// The set of times at which the snapshot is taken on the day the automatic snapshot is executed.
  final List<String> timePoints;

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
      appliedDbfsNumber: map['appliedDbfsNumber'] as int,
      createTime: map['createTime'] as String,
      id: map['id'] as String,
      lastModified: map['lastModified'] as String,
      policyId: map['policyId'] as String,
      policyName: map['policyName'] as String,
      repeatWeekdays: (map['repeatWeekdays'] as List).cast<String>(),
      retentionDays: map['retentionDays'] as int,
      status: map['status'] as String,
      statusDetail: map['statusDetail'] as String,
      timePoints: (map['timePoints'] as List).cast<String>(),
    );
  }
}

