// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../iam_audit_config_audit_log_config/iam_audit_config_audit_log_config_organizations.dart';

/// The set of arguments for IamAuditConfig.
class IamAuditConfigOrganizationsArgs {
  /// The configuration for logging of each type of permission.  This can be specified multiple times.  Structure is documented below.
  final pulumi.Input<List<IamAuditConfigAuditLogConfigOrganizations>>
      auditLogConfigs;

  /// The numeric ID of the organization in which you want to manage the audit logging config.
  final pulumi.Input<String> orgId;

  /// Service which will be enabled for audit logging.  The special value `allServices` covers all services.  Note that if there are google\_organization\_iam\_audit\_config resources covering both `allServices` and a specific service then the union of the two AuditConfigs is used for that service: the `log_types` specified in each `audit_log_config` are enabled, and the `exempted_members` in each `audit_log_config` are exempted.
  final pulumi.Input<String> service;

  IamAuditConfigOrganizationsArgs({
    required this.auditLogConfigs,
    required this.orgId,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['auditLogConfigs'] = pulumi.Input.mapInputValue<
            List<IamAuditConfigAuditLogConfigOrganizations>,
            List<Map<String, dynamic>>>(
        auditLogConfigs,
        (value) => pulumi.Input.encodeList<
            IamAuditConfigAuditLogConfigOrganizations,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['orgId'] = orgId;
    map['service'] = service;
    return map;
  }

  factory IamAuditConfigOrganizationsArgs.fromMap(Map<String, dynamic> map) {
    return IamAuditConfigOrganizationsArgs(
      auditLogConfigs:
          pulumi.Input.asInput<List<IamAuditConfigAuditLogConfigOrganizations>>(
              map['auditLogConfigs']),
      orgId: pulumi.Input.asInput<String>(map['orgId']),
      service: pulumi.Input.asInput<String>(map['service']),
    );
  }
}
