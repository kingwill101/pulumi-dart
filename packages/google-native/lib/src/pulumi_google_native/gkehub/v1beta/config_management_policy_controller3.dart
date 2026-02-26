// ignore_for_file: unused_element, unnecessary_cast

import 'config_management_policy_controller_monitoring3.dart';

/// Configuration for Policy Controller
class ConfigManagementPolicyController3 {
  /// Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables audit functionality altogether.
  final String? auditIntervalSeconds;

  /// Enables the installation of Policy Controller. If false, the rest of PolicyController fields take no effect.
  final bool? enabled;

  /// The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.
  final List<String>? exemptableNamespaces;

  /// Logs all denies and dry run failures.
  final bool? logDeniesEnabled;

  /// Monitoring specifies the configuration of monitoring.
  final ConfigManagementPolicyControllerMonitoring3? monitoring;

  /// Enable or disable mutation in policy controller. If true, mutation CRDs, webhook and controller deployment will be deployed to the cluster.
  final bool? mutationEnabled;

  /// Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.
  final bool? referentialRulesEnabled;

  /// Installs the default template library along with Policy Controller.
  final bool? templateLibraryInstalled;

  ConfigManagementPolicyController3({
    this.auditIntervalSeconds,
    this.enabled,
    this.exemptableNamespaces,
    this.logDeniesEnabled,
    this.monitoring,
    this.mutationEnabled,
    this.referentialRulesEnabled,
    this.templateLibraryInstalled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final auditIntervalSecondsValue = auditIntervalSeconds;
    if (auditIntervalSecondsValue != null) {
      map['auditIntervalSeconds'] = auditIntervalSecondsValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final exemptableNamespacesValue = exemptableNamespaces;
    if (exemptableNamespacesValue != null) {
      map['exemptableNamespaces'] = exemptableNamespacesValue;
    }
    final logDeniesEnabledValue = logDeniesEnabled;
    if (logDeniesEnabledValue != null) {
      map['logDeniesEnabled'] = logDeniesEnabledValue;
    }
    final monitoringValue = monitoring;
    if (monitoringValue != null) {
      map['monitoring'] = monitoringValue.toMap();
    }
    final mutationEnabledValue = mutationEnabled;
    if (mutationEnabledValue != null) {
      map['mutationEnabled'] = mutationEnabledValue;
    }
    final referentialRulesEnabledValue = referentialRulesEnabled;
    if (referentialRulesEnabledValue != null) {
      map['referentialRulesEnabled'] = referentialRulesEnabledValue;
    }
    final templateLibraryInstalledValue = templateLibraryInstalled;
    if (templateLibraryInstalledValue != null) {
      map['templateLibraryInstalled'] = templateLibraryInstalledValue;
    }
    return map;
  }

  factory ConfigManagementPolicyController3.fromMap(Map<String, dynamic> map) {
    return ConfigManagementPolicyController3(
      auditIntervalSeconds: map['auditIntervalSeconds'] == null
          ? null
          : map['auditIntervalSeconds'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      exemptableNamespaces: map['exemptableNamespaces'] == null
          ? null
          : (map['exemptableNamespaces'] as List).cast<String>(),
      logDeniesEnabled: map['logDeniesEnabled'] == null
          ? null
          : map['logDeniesEnabled'] as bool,
      monitoring: map['monitoring'] == null
          ? null
          : ConfigManagementPolicyControllerMonitoring3.fromMap(
              (map['monitoring'] as Map).cast<String, dynamic>()),
      mutationEnabled: map['mutationEnabled'] == null
          ? null
          : map['mutationEnabled'] as bool,
      referentialRulesEnabled: map['referentialRulesEnabled'] == null
          ? null
          : map['referentialRulesEnabled'] as bool,
      templateLibraryInstalled: map['templateLibraryInstalled'] == null
          ? null
          : map['templateLibraryInstalled'] as bool,
    );
  }
}
