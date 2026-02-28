// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iamaudit_config_audit_log_config.dart';

/// {@template pulumi_projects_i_amaudit_config_iamaudit_config_args_doc}
/// The set of arguments for IAMAuditConfig.
/// {@endtemplate}
/// {@macro pulumi_projects_i_amaudit_config_iamaudit_config_args_doc}
class IAMAuditConfigArgs {
  /// The configuration for logging of each type of permission.  This can be specified multiple times.  Structure is documented below.
  final pulumi.Input<List<IAMAuditConfigAuditLogConfig>> auditLogConfigs;

  /// The project id of the target project. This is not
  /// inferred from the provider.
  final pulumi.Input<String> project;

  /// Service which will be enabled for audit logging.  The special value `allServices` covers all services.  Note that if there are gcp.projects.IAMAuditConfig resources covering both `allServices` and a specific service then the union of the two AuditConfigs is used for that service: the `log_types` specified in each `audit_log_config` are enabled, and the `exempted_members` in each `audit_log_config` are exempted.
  final pulumi.Input<String> service;

  /// Creates a new [IAMAuditConfigArgs].
  /// [auditLogConfigs] The configuration for logging of each type of permission.  This can be specified multiple times.  Structure is documented below.
  /// [project] The project id of the target project. This is not
  /// [service] Service which will be enabled for audit logging.  The special value `allServices` covers all services.  Note that if there are gcp.projects.IAMAuditConfig resources covering both `allServices` and a specific service then the union of the two AuditConfigs is used for that service: the `log_types` specified in each `audit_log_config` are enabled, and the `exempted_members` in each `audit_log_config` are exempted.
  IAMAuditConfigArgs({
    required List<IAMAuditConfigAuditLogConfig> auditLogConfigs,
    required String project,
    required String service,
  })  : auditLogConfigs =
            pulumi.Input.asInput<List<IAMAuditConfigAuditLogConfig>>(
                auditLogConfigs),
        project = pulumi.Input.asInput<String>(project),
        service = pulumi.Input.asInput<String>(service);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['auditLogConfigs'] = pulumi.Input.mapInputValue<
            List<IAMAuditConfigAuditLogConfig>, List<Map<String, dynamic>>>(
        auditLogConfigs,
        (value) => pulumi.Input.encodeList<IAMAuditConfigAuditLogConfig,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['project'] = project;
    map['service'] = service;
    return map;
  }

  factory IAMAuditConfigArgs.fromMap(Map<String, dynamic> map) {
    return IAMAuditConfigArgs(
      auditLogConfigs: pulumi.Input.decodeList<IAMAuditConfigAuditLogConfig>(
          map['auditLogConfigs'],
          (value) => IAMAuditConfigAuditLogConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      project: map['project'] as String,
      service: map['service'] as String,
    );
  }
}
