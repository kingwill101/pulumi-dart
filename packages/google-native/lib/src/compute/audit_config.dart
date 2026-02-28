// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'audit_log_config.dart';

/// Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { "audit_configs": [ { "service": "allServices", "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type": "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com", "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type": "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts jose@example.com from DATA_READ logging, and aliya@example.com from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  final List<AuditLogConfig>? auditLogConfigs;

  /// This is deprecated and has no effect. Do not use.
  final List<String>? exemptedMembers;

  /// Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special value that covers all services.
  final String? service;

  /// Creates a new [AuditConfig].
  /// [auditLogConfigs] The configuration for logging of each type of permission.
  /// [exemptedMembers] This is deprecated and has no effect. Do not use.
  /// [service] Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special value that covers all services.
  AuditConfig({
    this.auditLogConfigs,
    this.exemptedMembers,
    this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final auditLogConfigsValue = auditLogConfigs;
    if (auditLogConfigsValue != null) {
      map['auditLogConfigs'] =
          pulumi.Input.encodeList<AuditLogConfig, Map<String, dynamic>>(
              auditLogConfigsValue, (value) => value.toMap());
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

  factory AuditConfig.fromMap(Map<String, dynamic> map) {
    return AuditConfig(
      auditLogConfigs: map['auditLogConfigs'] == null
          ? null
          : pulumi.Input.decodeList<AuditLogConfig>(
              map['auditLogConfigs'],
              (value) => AuditLogConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      exemptedMembers: map['exemptedMembers'] == null
          ? null
          : (map['exemptedMembers'] as List).cast<String>(),
      service: map['service'] == null ? null : map['service'] as String,
    );
  }
}
