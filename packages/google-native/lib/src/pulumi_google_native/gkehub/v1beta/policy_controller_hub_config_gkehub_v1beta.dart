// ignore_for_file: unused_element, unnecessary_cast

import 'policy_controller_hub_config_install_spec_gkehub_v1beta.dart';
import 'policy_controller_monitoring_config_gkehub_v1beta.dart';
import 'policy_controller_policy_content_spec_gkehub_v1beta.dart';

/// Configuration for Policy Controller
class PolicyControllerHubConfigGkehubV1beta {
  /// Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables audit functionality altogether.
  final String? auditIntervalSeconds;

  /// The maximum number of audit violations to be stored in a constraint. If not set, the internal default (currently 20) will be used.
  final String? constraintViolationLimit;

  /// Map of deployment configs to deployments ("admission", "audit", "mutation').
  final Map<String, String>? deploymentConfigs;

  /// The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.
  final List<String>? exemptableNamespaces;

  /// The install_spec represents the intended state specified by the latest request that mutated install_spec in the feature spec, not the lifecycle state of the feature observed by the Hub feature controller that is reported in the feature state.
  final PolicyControllerHubConfigInstallSpecGkehubV1beta? installSpec;

  /// Logs all denies and dry run failures.
  final bool? logDeniesEnabled;

  /// Monitoring specifies the configuration of monitoring.
  final PolicyControllerMonitoringConfigGkehubV1beta? monitoring;

  /// Enables the ability to mutate resources using Policy Controller.
  final bool? mutationEnabled;

  /// Specifies the desired policy content on the cluster
  final PolicyControllerPolicyContentSpecGkehubV1beta? policyContent;

  /// Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.
  final bool? referentialRulesEnabled;

  PolicyControllerHubConfigGkehubV1beta({
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

  factory PolicyControllerHubConfigGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return PolicyControllerHubConfigGkehubV1beta(
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
          : PolicyControllerHubConfigInstallSpecGkehubV1beta.fromValue(
              map['installSpec'] as String),
      logDeniesEnabled: map['logDeniesEnabled'] == null
          ? null
          : map['logDeniesEnabled'] as bool,
      monitoring: map['monitoring'] == null
          ? null
          : PolicyControllerMonitoringConfigGkehubV1beta.fromMap(
              (map['monitoring'] as Map).cast<String, dynamic>()),
      mutationEnabled: map['mutationEnabled'] == null
          ? null
          : map['mutationEnabled'] as bool,
      policyContent: map['policyContent'] == null
          ? null
          : PolicyControllerPolicyContentSpecGkehubV1beta.fromMap(
              (map['policyContent'] as Map).cast<String, dynamic>()),
      referentialRulesEnabled: map['referentialRulesEnabled'] == null
          ? null
          : map['referentialRulesEnabled'] as bool,
    );
  }
}
