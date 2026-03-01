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
    pulumi.Output<String>? auditStatus,
    pulumi.Output<String>? dbInstanceId,
    pulumi.Output<String>? filter,
    pulumi.Output<int>? storagePeriod,
  }) :
      auditStatus = pulumi.Input.asOptionalInput<String>(auditStatus),
      dbInstanceId = pulumi.Input.asOptionalInput<String>(dbInstanceId),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      storagePeriod = pulumi.Input.asOptionalInput<int>(storagePeriod);

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
      auditStatus: map['auditStatus'] == null ? null : pulumi.Output.create<String>(map['auditStatus'] as String),
      dbInstanceId: map['dbInstanceId'] == null ? null : pulumi.Output.create<String>(map['dbInstanceId'] as String),
      filter: map['filter'] == null ? null : pulumi.Output.create<String>(map['filter'] as String),
      storagePeriod: map['storagePeriod'] == null ? null : pulumi.Output.create<int>(map['storagePeriod'] as int),
    );
  }
}

