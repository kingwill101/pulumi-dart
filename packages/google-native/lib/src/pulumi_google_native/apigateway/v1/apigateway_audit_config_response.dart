// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'apigateway_audit_log_config_response.dart';

/// Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { "audit_configs": [ { "service": "allServices", "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type": "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com", "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type": "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.
class ApigatewayAuditConfigResponse {
  /// The configuration for logging of each type of permission.
  final List<ApigatewayAuditLogConfigResponse> auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special value that covers all services.
  final String service;

  ApigatewayAuditConfigResponse({
    required this.auditLogConfigs,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['auditLogConfigs'] = Input.encodeList<ApigatewayAuditLogConfigResponse,
        Map<String, dynamic>>(auditLogConfigs, (value) => value.toMap());
    map['service'] = service;
    return map;
  }

  factory ApigatewayAuditConfigResponse.fromMap(Map<String, dynamic> map) {
    return ApigatewayAuditConfigResponse(
      auditLogConfigs: Input.decodeList<ApigatewayAuditLogConfigResponse>(
          map['auditLogConfigs'],
          (value) => ApigatewayAuditLogConfigResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      service: map['service'] as String,
    );
  }
}
