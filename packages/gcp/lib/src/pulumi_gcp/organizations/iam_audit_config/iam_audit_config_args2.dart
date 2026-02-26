// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../iam_audit_config_audit_log_config/iam_audit_config_audit_log_config2.dart';

/// The set of arguments for IamAuditConfig.
class IamAuditConfigArgs2 {
  /// The configuration for logging of each type of permission.  This can be specified multiple times.  Structure is documented below.
  final Input<List<IamAuditConfigAuditLogConfig2>> auditLogConfigs;

  /// The numeric ID of the organization in which you want to manage the audit logging config.
  final Input<String> orgId;

  /// Service which will be enabled for audit logging.  The special value `allServices` covers all services.  Note that if there are google\_organization\_iam\_audit\_config resources covering both `allServices` and a specific service then the union of the two AuditConfigs is used for that service: the <span pulumi-lang-nodejs="`logTypes`" pulumi-lang-dotnet="`LogTypes`" pulumi-lang-go="`logTypes`" pulumi-lang-python="`log_types`" pulumi-lang-yaml="`logTypes`" pulumi-lang-java="`logTypes`">`log_types`</span> specified in each <span pulumi-lang-nodejs="`auditLogConfig`" pulumi-lang-dotnet="`AuditLogConfig`" pulumi-lang-go="`auditLogConfig`" pulumi-lang-python="`audit_log_config`" pulumi-lang-yaml="`auditLogConfig`" pulumi-lang-java="`auditLogConfig`">`audit_log_config`</span> are enabled, and the <span pulumi-lang-nodejs="`exemptedMembers`" pulumi-lang-dotnet="`ExemptedMembers`" pulumi-lang-go="`exemptedMembers`" pulumi-lang-python="`exempted_members`" pulumi-lang-yaml="`exemptedMembers`" pulumi-lang-java="`exemptedMembers`">`exempted_members`</span> in each <span pulumi-lang-nodejs="`auditLogConfig`" pulumi-lang-dotnet="`AuditLogConfig`" pulumi-lang-go="`auditLogConfig`" pulumi-lang-python="`audit_log_config`" pulumi-lang-yaml="`auditLogConfig`" pulumi-lang-java="`auditLogConfig`">`audit_log_config`</span> are exempted.
  final Input<String> service;

  IamAuditConfigArgs2({
    required this.auditLogConfigs,
    required this.orgId,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['auditLogConfigs'] = Input.mapInputValue<
            List<IamAuditConfigAuditLogConfig2>, List<Map<String, dynamic>>>(
        auditLogConfigs,
        (value) => Input.encodeList<IamAuditConfigAuditLogConfig2,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['orgId'] = orgId;
    map['service'] = service;
    return map;
  }

  factory IamAuditConfigArgs2.fromMap(Map<String, dynamic> map) {
    return IamAuditConfigArgs2(
      auditLogConfigs: Input.asInput<List<IamAuditConfigAuditLogConfig2>>(
          map['auditLogConfigs']),
      orgId: Input.asInput<String>(map['orgId']),
      service: Input.asInput<String>(map['service']),
    );
  }
}
