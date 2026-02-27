// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'audit_log_config_compute_v1.dart';

/// Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { "audit_configs": [ { "service": "allServices", "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type": "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com", "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type": "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts jose@example.com from DATA_READ logging, and aliya@example.com from DATA_WRITE logging.
class AuditConfigComputeV1 {
  /// The configuration for logging of each type of permission.
  final List<AuditLogConfigComputeV1>? auditLogConfigs;

  /// This is deprecated and has no effect. Do not use.
  final List<String>? exemptedMembers;

  /// Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special value that covers all services.
  final String? service;

  AuditConfigComputeV1({
    this.auditLogConfigs,
    this.exemptedMembers,
    this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final auditLogConfigsValue = auditLogConfigs;
    if (auditLogConfigsValue != null) {
      map['auditLogConfigs'] = pulumi.Input.encodeList<AuditLogConfigComputeV1,
          Map<String, dynamic>>(auditLogConfigsValue, (value) => value.toMap());
    }
    final exemptedMembersValue = exemptedMembers;
    if (exemptedMembersValue != null) {
      map['exemptedMembers'] = exemptedMembersValue;
    }
    final serviceValue = service;
    if (serviceValue != null) {
      map['service'] = serviceValue;
    }
    return map;
  }

  factory AuditConfigComputeV1.fromMap(Map<String, dynamic> map) {
    return AuditConfigComputeV1(
      auditLogConfigs: map['auditLogConfigs'] == null
          ? null
          : pulumi.Input.decodeList<AuditLogConfigComputeV1>(
              map['auditLogConfigs'],
              (value) => AuditLogConfigComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      exemptedMembers: map['exemptedMembers'] == null
          ? null
          : (map['exemptedMembers'] as List).cast<String>(),
      service: map['service'] == null ? null : map['service'] as String,
    );
  }
}
