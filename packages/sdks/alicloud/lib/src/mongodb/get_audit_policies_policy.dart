// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAuditPoliciesPolicy {
  /// The status of the log audit feature.
  final pulumi.Input<String> auditStatus;
  /// The ID of the instance.
  final pulumi.Input<String> dbInstanceId;
  /// The ID of the Audit Policy.
  final pulumi.Input<String> id;

  /// Creates a new [GetAuditPoliciesPolicy].
  /// [auditStatus] The status of the log audit feature.
  /// [dbInstanceId] The ID of the instance.
  /// [id] The ID of the Audit Policy.
  const GetAuditPoliciesPolicy({
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
      auditStatus: pulumi.Input.fromValue(map['auditStatus'] as String),
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

