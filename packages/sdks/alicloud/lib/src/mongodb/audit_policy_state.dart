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
  const AuditPolicyState({
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
      auditStatus: (() { final guardedValue = map['auditStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceId: (() { final guardedValue = map['dbInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storagePeriod: (() { final guardedValue = map['storagePeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

