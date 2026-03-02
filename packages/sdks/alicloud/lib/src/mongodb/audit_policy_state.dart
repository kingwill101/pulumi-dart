// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AuditPolicy resources.
class AuditPolicyState {
  /// Audit state, Valid values: `enable`, `disabled`.
  final pulumi.Input<String>? auditStatus;
  /// Database Instance Id
  final pulumi.Input<String>? dbInstanceId;
  /// The type of logs collected by the audit log feature of the instance. Separate multiple types with commas (,). Valid values:
  final pulumi.Input<String>? filter;
  /// Audit log retention duration. The value range is 1 to 365 days. The default value is 30 days.
  final pulumi.Input<int>? storagePeriod;

  /// Creates a new [AuditPolicyState].
  /// [auditStatus] Audit state, Valid values: `enable`, `disabled`.
  /// [dbInstanceId] Database Instance Id
  /// [filter] The type of logs collected by the audit log feature of the instance. Separate multiple types with commas (,). Valid values:
  /// [storagePeriod] Audit log retention duration. The value range is 1 to 365 days. The default value is 30 days.
  AuditPolicyState({
    this.auditStatus,
    this.dbInstanceId,
    this.filter,
    this.storagePeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditStatus': ?auditStatus,
      'dbInstanceId': ?dbInstanceId,
      'filter': ?filter,
      'storagePeriod': ?storagePeriod,
    };
  }

  factory AuditPolicyState.fromMap(Map<String, dynamic> map) {
    return AuditPolicyState(
      auditStatus: map['auditStatus'] == null ? null : (map['auditStatus']! as String).input(),
      dbInstanceId: map['dbInstanceId'] == null ? null : (map['dbInstanceId']! as String).input(),
      filter: map['filter'] == null ? null : (map['filter']! as String).input(),
      storagePeriod: map['storagePeriod'] == null ? null : (map['storagePeriod']! as int).input(),
    );
  }
}

