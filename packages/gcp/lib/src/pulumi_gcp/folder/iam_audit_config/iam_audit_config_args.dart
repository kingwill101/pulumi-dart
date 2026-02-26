// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../iam_audit_config_audit_log_config/iam_audit_config_audit_log_config.dart';

/// The set of arguments for IamAuditConfig.
class IamAuditConfigArgs {
  /// The configuration for logging of each type of permission.  This can be specified multiple times.  Structure is documented below.
  final Input<List<IamAuditConfigAuditLogConfig>> auditLogConfigs;

  /// The resource name of the folder the policy is attached to. Its format is folders/{folder_id}.
  final Input<String> folder;

  /// Service which will be enabled for audit logging.  The special value `allServices` covers all services.  Note that if there are<span pulumi-lang-nodejs=" gcp.folder.IamAuditConfig " pulumi-lang-dotnet=" gcp.folder.IamAuditConfig " pulumi-lang-go=" folder.IamAuditConfig " pulumi-lang-python=" folder.IamAuditConfig " pulumi-lang-yaml=" gcp.folder.IamAuditConfig " pulumi-lang-java=" gcp.folder.IamAuditConfig "> gcp.folder.IamAuditConfig </span>resources covering both `allServices` and a specific service then the union of the two AuditConfigs is used for that service: the <span pulumi-lang-nodejs="`logTypes`" pulumi-lang-dotnet="`LogTypes`" pulumi-lang-go="`logTypes`" pulumi-lang-python="`log_types`" pulumi-lang-yaml="`logTypes`" pulumi-lang-java="`logTypes`">`log_types`</span> specified in each <span pulumi-lang-nodejs="`auditLogConfig`" pulumi-lang-dotnet="`AuditLogConfig`" pulumi-lang-go="`auditLogConfig`" pulumi-lang-python="`audit_log_config`" pulumi-lang-yaml="`auditLogConfig`" pulumi-lang-java="`auditLogConfig`">`audit_log_config`</span> are enabled, and the <span pulumi-lang-nodejs="`exemptedMembers`" pulumi-lang-dotnet="`ExemptedMembers`" pulumi-lang-go="`exemptedMembers`" pulumi-lang-python="`exempted_members`" pulumi-lang-yaml="`exemptedMembers`" pulumi-lang-java="`exemptedMembers`">`exempted_members`</span> in each <span pulumi-lang-nodejs="`auditLogConfig`" pulumi-lang-dotnet="`AuditLogConfig`" pulumi-lang-go="`auditLogConfig`" pulumi-lang-python="`audit_log_config`" pulumi-lang-yaml="`auditLogConfig`" pulumi-lang-java="`auditLogConfig`">`audit_log_config`</span> are exempted.
  final Input<String> service;

  IamAuditConfigArgs({
    required this.auditLogConfigs,
    required this.folder,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['auditLogConfigs'] = Input.mapInputValue<
            List<IamAuditConfigAuditLogConfig>, List<Map<String, dynamic>>>(
        auditLogConfigs,
        (value) => Input.encodeList<IamAuditConfigAuditLogConfig,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['folder'] = folder;
    map['service'] = service;
    return map;
  }

  factory IamAuditConfigArgs.fromMap(Map<String, dynamic> map) {
    return IamAuditConfigArgs(
      auditLogConfigs: Input.asInput<List<IamAuditConfigAuditLogConfig>>(
          map['auditLogConfigs']),
      folder: Input.asInput<String>(map['folder']),
      service: Input.asInput<String>(map['service']),
    );
  }
}
