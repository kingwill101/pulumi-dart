// ignore_for_file: unused_element, unnecessary_cast

import 'config_management_policy_controller_monitoring_response3.dart';

/// Configuration for Policy Controller
class ConfigManagementPolicyControllerResponse3 {
  /// Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables audit functionality altogether.
  final String auditIntervalSeconds;

  /// Enables the installation of Policy Controller. If false, the rest of PolicyController fields take no effect.
  final bool enabled;

  /// The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.
  final List<String> exemptableNamespaces;

  /// Logs all denies and dry run failures.
  final bool logDeniesEnabled;

  /// Monitoring specifies the configuration of monitoring.
  final ConfigManagementPolicyControllerMonitoringResponse3 monitoring;

  /// Enable or disable mutation in policy controller. If true, mutation CRDs, webhook and controller deployment will be deployed to the cluster.
  final bool mutationEnabled;

  /// Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.
  final bool referentialRulesEnabled;

  /// Installs the default template library along with Policy Controller.
  final bool templateLibraryInstalled;

  /// Last time this membership spec was updated.
  final String updateTime;

  ConfigManagementPolicyControllerResponse3({
    required this.auditIntervalSeconds,
    required this.enabled,
    required this.exemptableNamespaces,
    required this.logDeniesEnabled,
    required this.monitoring,
    required this.mutationEnabled,
    required this.referentialRulesEnabled,
    required this.templateLibraryInstalled,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['auditIntervalSeconds'] = auditIntervalSeconds;
    map['enabled'] = enabled;
    map['exemptableNamespaces'] = exemptableNamespaces;
    map['logDeniesEnabled'] = logDeniesEnabled;
    map['monitoring'] = monitoring.toMap();
    map['mutationEnabled'] = mutationEnabled;
    map['referentialRulesEnabled'] = referentialRulesEnabled;
    map['templateLibraryInstalled'] = templateLibraryInstalled;
    map['updateTime'] = updateTime;
    return map;
  }

  factory ConfigManagementPolicyControllerResponse3.fromMap(
      Map<String, dynamic> map) {
    return ConfigManagementPolicyControllerResponse3(
      auditIntervalSeconds: map['auditIntervalSeconds'] as String,
      enabled: map['enabled'] as bool,
      exemptableNamespaces:
          (map['exemptableNamespaces'] as List).cast<String>(),
      logDeniesEnabled: map['logDeniesEnabled'] as bool,
      monitoring: ConfigManagementPolicyControllerMonitoringResponse3.fromMap(
          (map['monitoring'] as Map).cast<String, dynamic>()),
      mutationEnabled: map['mutationEnabled'] as bool,
      referentialRulesEnabled: map['referentialRulesEnabled'] as bool,
      templateLibraryInstalled: map['templateLibraryInstalled'] as bool,
      updateTime: map['updateTime'] as String,
    );
  }
}
