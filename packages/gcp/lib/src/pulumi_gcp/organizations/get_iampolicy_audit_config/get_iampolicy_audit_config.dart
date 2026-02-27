// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_iampolicy_audit_config_audit_log_config/get_iampolicy_audit_config_audit_log_config.dart';

class GetIAMPolicyAuditConfig {
  /// A nested block that defines the operations you'd like to log.
  final List<GetIAMPolicyAuditConfigAuditLogConfig> auditLogConfigs;

  /// Defines a service that will be enabled for audit logging. For example, `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special value that covers all services.
  final String service;

  GetIAMPolicyAuditConfig({
    required this.auditLogConfigs,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['auditLogConfigs'] = pulumi.Input.encodeList<
        GetIAMPolicyAuditConfigAuditLogConfig,
        Map<String, dynamic>>(auditLogConfigs, (value) => value.toMap());
    map['service'] = service;
    return map;
  }

  factory GetIAMPolicyAuditConfig.fromMap(Map<String, dynamic> map) {
    return GetIAMPolicyAuditConfig(
      auditLogConfigs:
          pulumi.Input.decodeList<GetIAMPolicyAuditConfigAuditLogConfig>(
              map['auditLogConfigs'],
              (value) => GetIAMPolicyAuditConfigAuditLogConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      service: map['service'] as String,
    );
  }
}
