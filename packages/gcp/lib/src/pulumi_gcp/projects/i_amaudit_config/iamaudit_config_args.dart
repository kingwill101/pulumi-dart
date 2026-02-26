// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../iamaudit_config_audit_log_config/iamaudit_config_audit_log_config.dart';

/// The set of arguments for IAMAuditConfig.
class IAMAuditConfigArgs {
  /// The configuration for logging of each type of permission.  This can be specified multiple times.  Structure is documented below.
  final Input<List<IAMAuditConfigAuditLogConfig>> auditLogConfigs;

  /// The project id of the target project. This is not
  /// inferred from the provider.
  final Input<String> project;

  /// Service which will be enabled for audit logging.  The special value `allServices` covers all services.  Note that if there are<span pulumi-lang-nodejs=" gcp.projects.IAMAuditConfig " pulumi-lang-dotnet=" gcp.projects.IAMAuditConfig " pulumi-lang-go=" projects.IAMAuditConfig " pulumi-lang-python=" projects.IAMAuditConfig " pulumi-lang-yaml=" gcp.projects.IAMAuditConfig " pulumi-lang-java=" gcp.projects.IAMAuditConfig "> gcp.projects.IAMAuditConfig </span>resources covering both `allServices` and a specific service then the union of the two AuditConfigs is used for that service: the <span pulumi-lang-nodejs="`logTypes`" pulumi-lang-dotnet="`LogTypes`" pulumi-lang-go="`logTypes`" pulumi-lang-python="`log_types`" pulumi-lang-yaml="`logTypes`" pulumi-lang-java="`logTypes`">`log_types`</span> specified in each <span pulumi-lang-nodejs="`auditLogConfig`" pulumi-lang-dotnet="`AuditLogConfig`" pulumi-lang-go="`auditLogConfig`" pulumi-lang-python="`audit_log_config`" pulumi-lang-yaml="`auditLogConfig`" pulumi-lang-java="`auditLogConfig`">`audit_log_config`</span> are enabled, and the <span pulumi-lang-nodejs="`exemptedMembers`" pulumi-lang-dotnet="`ExemptedMembers`" pulumi-lang-go="`exemptedMembers`" pulumi-lang-python="`exempted_members`" pulumi-lang-yaml="`exemptedMembers`" pulumi-lang-java="`exemptedMembers`">`exempted_members`</span> in each <span pulumi-lang-nodejs="`auditLogConfig`" pulumi-lang-dotnet="`AuditLogConfig`" pulumi-lang-go="`auditLogConfig`" pulumi-lang-python="`audit_log_config`" pulumi-lang-yaml="`auditLogConfig`" pulumi-lang-java="`auditLogConfig`">`audit_log_config`</span> are exempted.
  final Input<String> service;

  IAMAuditConfigArgs({
    required this.auditLogConfigs,
    required this.project,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['auditLogConfigs'] = Input.mapInputValue<
            List<IAMAuditConfigAuditLogConfig>, List<Map<String, dynamic>>>(
        auditLogConfigs,
        (value) => Input.encodeList<IAMAuditConfigAuditLogConfig,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['project'] = project;
    map['service'] = service;
    return map;
  }

  factory IAMAuditConfigArgs.fromMap(Map<String, dynamic> map) {
    return IAMAuditConfigArgs(
      auditLogConfigs: Input.asInput<List<IAMAuditConfigAuditLogConfig>>(
          map['auditLogConfigs']),
      project: Input.asInput<String>(map['project']),
      service: Input.asInput<String>(map['service']),
    );
  }
}
