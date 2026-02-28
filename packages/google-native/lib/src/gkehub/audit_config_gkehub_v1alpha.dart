// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'audit_log_config_gkehub_v1alpha.dart';

/// Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { "audit_configs": [ { "service": "allServices", "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type": "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com", "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type": "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.
class AuditConfigGkehubV1alpha {
  /// The configuration for logging of each type of permission.
  final List<AuditLogConfigGkehubV1alpha>? auditLogConfigs;
  /// Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special value that covers all services.
  final String? service;

  /// Creates a new [AuditConfigGkehubV1alpha].
  /// [auditLogConfigs] The configuration for logging of each type of permission.
  /// [service] Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special value that covers all services.
  AuditConfigGkehubV1alpha({
    this.auditLogConfigs,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLogConfigs': ?auditLogConfigs == null ? null : pulumi.Input.encodeList<AuditLogConfigGkehubV1alpha, Map<String, dynamic>>(auditLogConfigs!, (value) => value.toMap()),
      'service': ?service,
    };
  }

  factory AuditConfigGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return AuditConfigGkehubV1alpha(
      auditLogConfigs: map['auditLogConfigs'] == null ? null : pulumi.Input.decodeList<AuditLogConfigGkehubV1alpha>(map['auditLogConfigs'], (value) => AuditLogConfigGkehubV1alpha.fromMap((value as Map).cast<String, dynamic>())),
      service: map['service'] == null ? null : map['service'] as String,
    );
  }
}

