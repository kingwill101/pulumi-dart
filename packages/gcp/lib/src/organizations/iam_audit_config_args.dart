// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_audit_config_audit_log_config.dart';

/// {@template pulumi_organizations_iam_audit_config_iam_audit_config_args_doc}
/// The set of arguments for IamAuditConfig.
/// {@endtemplate}
/// {@macro pulumi_organizations_iam_audit_config_iam_audit_config_args_doc}
class IamAuditConfigArgs {
  /// The configuration for logging of each type of permission.  This can be specified multiple times.  Structure is documented below.
  final pulumi.Input<List<IamAuditConfigAuditLogConfig>> auditLogConfigs;
  /// The numeric ID of the organization in which you want to manage the audit logging config.
  final pulumi.Input<String> orgId;
  /// Service which will be enabled for audit logging.  The special value `allServices` covers all services.  Note that if there are google\_organization\_iam\_audit\_config resources covering both `allServices` and a specific service then the union of the two AuditConfigs is used for that service: the `log_types` specified in each `audit_log_config` are enabled, and the `exempted_members` in each `audit_log_config` are exempted.
  final pulumi.Input<String> service;

  /// Creates a new [IamAuditConfigArgs].
  /// [auditLogConfigs] The configuration for logging of each type of permission.  This can be specified multiple times.  Structure is documented below.
  /// [orgId] The numeric ID of the organization in which you want to manage the audit logging config.
  /// [service] Service which will be enabled for audit logging.  The special value `allServices` covers all services.  Note that if there are google\_organization\_iam\_audit\_config resources covering both `allServices` and a specific service then the union of the two AuditConfigs is used for that service: the `log_types` specified in each `audit_log_config` are enabled, and the `exempted_members` in each `audit_log_config` are exempted.
  IamAuditConfigArgs({
    required List<IamAuditConfigAuditLogConfig> auditLogConfigs,
    required String orgId,
    required String service,
  }) :
      auditLogConfigs = pulumi.Input.asInput<List<IamAuditConfigAuditLogConfig>>(auditLogConfigs),
      orgId = pulumi.Input.asInput<String>(orgId),
      service = pulumi.Input.asInput<String>(service);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLogConfigs': pulumi.Input.mapInputValue<List<IamAuditConfigAuditLogConfig>, List<Map<String, dynamic>>>(auditLogConfigs, (value) => pulumi.Input.encodeList<IamAuditConfigAuditLogConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'orgId': orgId,
      'service': service,
    };
  }

  factory IamAuditConfigArgs.fromMap(Map<String, dynamic> map) {
    return IamAuditConfigArgs(
      auditLogConfigs: pulumi.Input.decodeList<IamAuditConfigAuditLogConfig>(map['auditLogConfigs'], (value) => IamAuditConfigAuditLogConfig.fromMap((value as Map).cast<String, dynamic>())),
      orgId: map['orgId'] as String,
      service: map['service'] as String,
    );
  }
}

