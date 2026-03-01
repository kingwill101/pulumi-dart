// ignore_for_file: unused_element, unnecessary_cast

import 'config_management_policy_controller_monitoring.dart';

/// Configuration for Policy Controller
class ConfigManagementPolicyController {
  /// Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables audit functionality altogether.
  final String? auditIntervalSeconds;

  /// Enables the installation of Policy Controller. If false, the rest of PolicyController fields take no effect.
  final bool? enabled;

  /// The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.
  final List<String>? exemptableNamespaces;

  /// Logs all denies and dry run failures.
  final bool? logDeniesEnabled;

  /// Monitoring specifies the configuration of monitoring.
  final ConfigManagementPolicyControllerMonitoring? monitoring;

  /// Enable or disable mutation in policy controller. If true, mutation CRDs, webhook and controller deployment will be deployed to the cluster.
  final bool? mutationEnabled;

  /// Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.
  final bool? referentialRulesEnabled;

  /// Installs the default template library along with Policy Controller.
  final bool? templateLibraryInstalled;

  /// Creates a new [ConfigManagementPolicyController].
  /// [auditIntervalSeconds] Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables audit functionality altogether.
  /// [enabled] Enables the installation of Policy Controller. If false, the rest of PolicyController fields take no effect.
  /// [exemptableNamespaces] The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.
  /// [logDeniesEnabled] Logs all denies and dry run failures.
  /// [monitoring] Monitoring specifies the configuration of monitoring.
  /// [mutationEnabled] Enable or disable mutation in policy controller. If true, mutation CRDs, webhook and controller deployment will be deployed to the cluster.
  /// [referentialRulesEnabled] Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.
  /// [templateLibraryInstalled] Installs the default template library along with Policy Controller.
  ConfigManagementPolicyController({
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
    return <String, dynamic>{
      'auditIntervalSeconds': ?auditIntervalSeconds,
      'enabled': ?enabled,
      'exemptableNamespaces': ?exemptableNamespaces,
      'logDeniesEnabled': ?logDeniesEnabled,
      'monitoring': ?monitoring == null ? null : monitoring!.toMap(),
      'mutationEnabled': ?mutationEnabled,
      'referentialRulesEnabled': ?referentialRulesEnabled,
      'templateLibraryInstalled': ?templateLibraryInstalled,
    };
  }

  factory ConfigManagementPolicyController.fromMap(Map<String, dynamic> map) {
    return ConfigManagementPolicyController(
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
          : ConfigManagementPolicyControllerMonitoring.fromMap(
              (map['monitoring'] as Map).cast<String, dynamic>(),
            ),
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
