// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'audit_log_config_response40.dart';

/// Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { "audit_configs": [ { "service": "allServices", "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type": "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com", "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type": "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.
class AuditConfigResponse40 {
  /// The configuration for logging of each type of permission.
  final List<AuditLogConfigResponse40> auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special value that covers all services.
  final String service;

  AuditConfigResponse40({
    required this.auditLogConfigs,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['auditLogConfigs'] =
        Input.encodeList<AuditLogConfigResponse40, Map<String, dynamic>>(
            auditLogConfigs, (value) => value.toMap());
    map['service'] = service;
    return map;
  }

  factory AuditConfigResponse40.fromMap(Map<String, dynamic> map) {
    return AuditConfigResponse40(
      auditLogConfigs: Input.decodeList<AuditLogConfigResponse40>(
          map['auditLogConfigs'],
          (value) => AuditLogConfigResponse40.fromMap(
              (value as Map).cast<String, dynamic>())),
      service: map['service'] as String,
    );
  }
}
