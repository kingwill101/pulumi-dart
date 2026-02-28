// ignore_for_file: unused_element, unnecessary_cast

import 'policy_controller_hub_config_install_spec_gkehub_v1alpha.dart';
import 'policy_controller_monitoring_config_gkehub_v1alpha.dart';
import 'policy_controller_policy_content_spec_gkehub_v1alpha.dart';

/// Configuration for Policy Controller
class PolicyControllerHubConfigGkehubV1alpha {
  /// Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables audit functionality altogether.
  final String? auditIntervalSeconds;
  /// The maximum number of audit violations to be stored in a constraint. If not set, the internal default (currently 20) will be used.
  final String? constraintViolationLimit;
  /// Map of deployment configs to deployments ("admission", "audit", "mutation').
  final Map<String, String>? deploymentConfigs;
  /// The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.
  final List<String>? exemptableNamespaces;
  /// The install_spec represents the intended state specified by the latest request that mutated install_spec in the feature spec, not the lifecycle state of the feature observed by the Hub feature controller that is reported in the feature state.
  final PolicyControllerHubConfigInstallSpecGkehubV1alpha? installSpec;
  /// Logs all denies and dry run failures.
  final bool? logDeniesEnabled;
  /// Monitoring specifies the configuration of monitoring.
  final PolicyControllerMonitoringConfigGkehubV1alpha? monitoring;
  /// Enables the ability to mutate resources using Policy Controller.
  final bool? mutationEnabled;
  /// Specifies the desired policy content on the cluster
  final PolicyControllerPolicyContentSpecGkehubV1alpha? policyContent;
  /// Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.
  final bool? referentialRulesEnabled;

  /// Creates a new [PolicyControllerHubConfigGkehubV1alpha].
  /// [auditIntervalSeconds] Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables audit functionality altogether.
  /// [constraintViolationLimit] The maximum number of audit violations to be stored in a constraint. If not set, the internal default (currently 20) will be used.
  /// [deploymentConfigs] Map of deployment configs to deployments ("admission", "audit", "mutation').
  /// [exemptableNamespaces] The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.
  /// [installSpec] The install_spec represents the intended state specified by the latest request that mutated install_spec in the feature spec, not the lifecycle state of the feature observed by the Hub feature controller that is reported in the feature state.
  /// [logDeniesEnabled] Logs all denies and dry run failures.
  /// [monitoring] Monitoring specifies the configuration of monitoring.
  /// [mutationEnabled] Enables the ability to mutate resources using Policy Controller.
  /// [policyContent] Specifies the desired policy content on the cluster
  /// [referentialRulesEnabled] Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.
  PolicyControllerHubConfigGkehubV1alpha({
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
    return <String, dynamic>{
      'auditIntervalSeconds': ?auditIntervalSeconds,
      'constraintViolationLimit': ?constraintViolationLimit,
      'deploymentConfigs': ?deploymentConfigs,
      'exemptableNamespaces': ?exemptableNamespaces,
      'installSpec': ?installSpec == null ? null : installSpec!.value,
      'logDeniesEnabled': ?logDeniesEnabled,
      'monitoring': ?monitoring == null ? null : monitoring!.toMap(),
      'mutationEnabled': ?mutationEnabled,
      'policyContent': ?policyContent == null ? null : policyContent!.toMap(),
      'referentialRulesEnabled': ?referentialRulesEnabled,
    };
  }

  factory PolicyControllerHubConfigGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return PolicyControllerHubConfigGkehubV1alpha(
      auditIntervalSeconds: map['auditIntervalSeconds'] == null ? null : map['auditIntervalSeconds'] as String,
      constraintViolationLimit: map['constraintViolationLimit'] == null ? null : map['constraintViolationLimit'] as String,
      deploymentConfigs: map['deploymentConfigs'] == null ? null : (map['deploymentConfigs'] as Map).cast<String, String>(),
      exemptableNamespaces: map['exemptableNamespaces'] == null ? null : (map['exemptableNamespaces'] as List).cast<String>(),
      installSpec: map['installSpec'] == null ? null : PolicyControllerHubConfigInstallSpecGkehubV1alpha.fromValue(map['installSpec'] as String),
      logDeniesEnabled: map['logDeniesEnabled'] == null ? null : map['logDeniesEnabled'] as bool,
      monitoring: map['monitoring'] == null ? null : PolicyControllerMonitoringConfigGkehubV1alpha.fromMap((map['monitoring'] as Map).cast<String, dynamic>()),
      mutationEnabled: map['mutationEnabled'] == null ? null : map['mutationEnabled'] as bool,
      policyContent: map['policyContent'] == null ? null : PolicyControllerPolicyContentSpecGkehubV1alpha.fromMap((map['policyContent'] as Map).cast<String, dynamic>()),
      referentialRulesEnabled: map['referentialRulesEnabled'] == null ? null : map['referentialRulesEnabled'] as bool,
    );
  }
}

