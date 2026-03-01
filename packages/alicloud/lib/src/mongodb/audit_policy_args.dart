// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mongodb_audit_policy_audit_policy_args_doc}
/// The set of arguments for AuditPolicy.
/// {@endtemplate}
/// {@macro pulumi_mongodb_audit_policy_audit_policy_args_doc}
class AuditPolicyArgs {
  /// Audit state, Valid values: `enable`, `disabled`.
  final pulumi.Input<String> auditStatus;
  /// Database Instance Id
  final pulumi.Input<String> dbInstanceId;
  /// The type of logs collected by the audit log feature of the instance. Separate multiple types with commas (,). Valid values:
  final pulumi.Input<String>? filter;
  /// Audit log retention duration. The value range is 1 to 365 days. The default value is 30 days.
  final pulumi.Input<int>? storagePeriod;

  /// Creates a new [AuditPolicyArgs].
  /// [auditStatus] Audit state, Valid values: `enable`, `disabled`.
  /// [dbInstanceId] Database Instance Id
  /// [filter] The type of logs collected by the audit log feature of the instance. Separate multiple types with commas (,). Valid values:
  /// [storagePeriod] Audit log retention duration. The value range is 1 to 365 days. The default value is 30 days.
  AuditPolicyArgs({
    required String auditStatus,
    required String dbInstanceId,
    String? filter,
    int? storagePeriod,
  }) :
      auditStatus = pulumi.Input.asInput<String>(auditStatus),
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      storagePeriod = pulumi.Input.asOptionalInput<int>(storagePeriod);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditStatus': auditStatus,
      'dbInstanceId': dbInstanceId,
      'filter': ?filter,
      'storagePeriod': ?storagePeriod,
    };
  }

  factory AuditPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AuditPolicyArgs(
      auditStatus: map['auditStatus'] as String,
      dbInstanceId: map['dbInstanceId'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
      storagePeriod: map['storagePeriod'] == null ? null : map['storagePeriod'] as int,
    );
  }
}

