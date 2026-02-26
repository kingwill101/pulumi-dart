// ignore_for_file: unused_element, unnecessary_cast

import 'policy_controller_hub_config_install_spec2.dart';
import 'policy_controller_monitoring_config2.dart';
import 'policy_controller_policy_content_spec2.dart';

/// Configuration for Policy Controller
class PolicyControllerHubConfig2 {
  /// Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables audit functionality altogether.
  final String? auditIntervalSeconds;

  /// The maximum number of audit violations to be stored in a constraint. If not set, the internal default (currently 20) will be used.
  final String? constraintViolationLimit;

  /// Map of deployment configs to deployments ("admission", "audit", "mutation').
  final Map<String, String>? deploymentConfigs;

  /// The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.
  final List<String>? exemptableNamespaces;

  /// The install_spec represents the intended state specified by the latest request that mutated install_spec in the feature spec, not the lifecycle state of the feature observed by the Hub feature controller that is reported in the feature state.
  final PolicyControllerHubConfigInstallSpec2? installSpec;

  /// Logs all denies and dry run failures.
  final bool? logDeniesEnabled;

  /// Monitoring specifies the configuration of monitoring.
  final PolicyControllerMonitoringConfig2? monitoring;

  /// Enables the ability to mutate resources using Policy Controller.
  final bool? mutationEnabled;

  /// Specifies the desired policy content on the cluster
  final PolicyControllerPolicyContentSpec2? policyContent;

  /// Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.
  final bool? referentialRulesEnabled;

  PolicyControllerHubConfig2({
    this.auditIntervalSeconds,
    this.constraintViolationLimit,
    this.deploymentConfigs,
    this.exemptableNamespaces,
    this.installSpec,
    this.logDeniesEnabled,
    this.monitoring,
    this.mutationEnabled,
    this.policyContent,
    this.referentialRulesEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final auditIntervalSecondsValue = auditIntervalSeconds;
    if (auditIntervalSecondsValue != null) {
      map['auditIntervalSeconds'] = auditIntervalSecondsValue;
    }
    final constraintViolationLimitValue = constraintViolationLimit;
    if (constraintViolationLimitValue != null) {
      map['constraintViolationLimit'] = constraintViolationLimitValue;
    }
    final deploymentConfigsValue = deploymentConfigs;
    if (deploymentConfigsValue != null) {
      map['deploymentConfigs'] = deploymentConfigsValue;
    }
    final exemptableNamespacesValue = exemptableNamespaces;
    if (exemptableNamespacesValue != null) {
      map['exemptableNamespaces'] = exemptableNamespacesValue;
    }
    final installSpecValue = installSpec;
    if (installSpecValue != null) {
      map['installSpec'] = installSpecValue.value;
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
    final policyContentValue = policyContent;
    if (policyContentValue != null) {
      map['policyContent'] = policyContentValue.toMap();
    }
    final referentialRulesEnabledValue = referentialRulesEnabled;
    if (referentialRulesEnabledValue != null) {
      map['referentialRulesEnabled'] = referentialRulesEnabledValue;
    }
    return map;
  }

  factory PolicyControllerHubConfig2.fromMap(Map<String, dynamic> map) {
    return PolicyControllerHubConfig2(
      auditIntervalSeconds: map['auditIntervalSeconds'] == null
          ? null
          : map['auditIntervalSeconds'] as String,
      constraintViolationLimit: map['constraintViolationLimit'] == null
          ? null
          : map['constraintViolationLimit'] as String,
      deploymentConfigs: map['deploymentConfigs'] == null
          ? null
          : (map['deploymentConfigs'] as Map).cast<String, String>(),
      exemptableNamespaces: map['exemptableNamespaces'] == null
          ? null
          : (map['exemptableNamespaces'] as List).cast<String>(),
      installSpec: map['installSpec'] == null
          ? null
          : PolicyControllerHubConfigInstallSpec2.fromValue(
              map['installSpec'] as String),
      logDeniesEnabled: map['logDeniesEnabled'] == null
          ? null
          : map['logDeniesEnabled'] as bool,
      monitoring: map['monitoring'] == null
          ? null
          : PolicyControllerMonitoringConfig2.fromMap(
              (map['monitoring'] as Map).cast<String, dynamic>()),
      mutationEnabled: map['mutationEnabled'] == null
          ? null
          : map['mutationEnabled'] as bool,
      policyContent: map['policyContent'] == null
          ? null
          : PolicyControllerPolicyContentSpec2.fromMap(
              (map['policyContent'] as Map).cast<String, dynamic>()),
      referentialRulesEnabled: map['referentialRulesEnabled'] == null
          ? null
          : map['referentialRulesEnabled'] as bool,
    );
  }
}
