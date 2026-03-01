// ignore_for_file: unused_element, unnecessary_cast


class GetAuditPoliciesPolicy {
  /// The status of the log audit feature.
  final String auditStatus;
  /// The ID of the instance.
  final String dbInstanceId;
  /// The ID of the Audit Policy.
  final String id;

  /// Creates a new [GetAuditPoliciesPolicy].
  /// [auditStatus] The status of the log audit feature.
  /// [dbInstanceId] The ID of the instance.
  /// [id] The ID of the Audit Policy.
  GetAuditPoliciesPolicy({
    required this.auditStatus,
    required this.dbInstanceId,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditStatus': auditStatus,
      'dbInstanceId': dbInstanceId,
      'id': id,
    };
  }

  factory GetAuditPoliciesPolicy.fromMap(Map<String, dynamic> map) {
    return GetAuditPoliciesPolicy(
      auditStatus: map['auditStatus'] as String,
      dbInstanceId: map['dbInstanceId'] as String,
      id: map['id'] as String,
    );
  }
}

