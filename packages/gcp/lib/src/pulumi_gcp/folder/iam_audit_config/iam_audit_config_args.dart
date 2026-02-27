// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../iam_audit_config_audit_log_config/iam_audit_config_audit_log_config.dart';

/// The set of arguments for IamAuditConfig.
class IamAuditConfigArgs {
  /// The configuration for logging of each type of permission.  This can be specified multiple times.  Structure is documented below.
  final pulumi.Input<List<IamAuditConfigAuditLogConfig>> auditLogConfigs;

  /// The resource name of the folder the policy is attached to. Its format is folders/{folder_id}.
  final pulumi.Input<String> folder;

  /// Service which will be enabled for audit logging.  The special value `allServices` covers all services.  Note that if there are gcp.folder.IamAuditConfig resources covering both `allServices` and a specific service then the union of the two AuditConfigs is used for that service: the `log_types` specified in each `audit_log_config` are enabled, and the `exempted_members` in each `audit_log_config` are exempted.
  final pulumi.Input<String> service;

  IamAuditConfigArgs({
    required this.auditLogConfigs,
    required this.folder,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['auditLogConfigs'] = pulumi.Input.mapInputValue<
            List<IamAuditConfigAuditLogConfig>, List<Map<String, dynamic>>>(
        auditLogConfigs,
        (value) => pulumi.Input.encodeList<IamAuditConfigAuditLogConfig,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['folder'] = folder;
    map['service'] = service;
    return map;
  }

  factory IamAuditConfigArgs.fromMap(Map<String, dynamic> map) {
    return IamAuditConfigArgs(
      auditLogConfigs: pulumi.Input.asInput<List<IamAuditConfigAuditLogConfig>>(
          map['auditLogConfigs']),
      folder: pulumi.Input.asInput<String>(map['folder']),
      service: pulumi.Input.asInput<String>(map['service']),
    );
  }
}
