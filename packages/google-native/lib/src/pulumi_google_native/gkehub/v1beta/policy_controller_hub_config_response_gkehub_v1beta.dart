// ignore_for_file: unused_element, unnecessary_cast

import 'policy_controller_monitoring_config_response_gkehub_v1beta.dart';
import 'policy_controller_policy_content_spec_response_gkehub_v1beta.dart';

/// Configuration for Policy Controller
class PolicyControllerHubConfigResponseGkehubV1beta {
  /// Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables audit functionality altogether.
  final String auditIntervalSeconds;

  /// The maximum number of audit violations to be stored in a constraint. If not set, the internal default (currently 20) will be used.
  final String constraintViolationLimit;

  /// Map of deployment configs to deployments ("admission", "audit", "mutation').
  final Map<String, String> deploymentConfigs;

  /// The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.
  final List<String> exemptableNamespaces;

  /// The install_spec represents the intended state specified by the latest request that mutated install_spec in the feature spec, not the lifecycle state of the feature observed by the Hub feature controller that is reported in the feature state.
  final String installSpec;

  /// Logs all denies and dry run failures.
  final bool logDeniesEnabled;

  /// Monitoring specifies the configuration of monitoring.
  final PolicyControllerMonitoringConfigResponseGkehubV1beta monitoring;

  /// Enables the ability to mutate resources using Policy Controller.
  final bool mutationEnabled;

  /// Specifies the desired policy content on the cluster
  final PolicyControllerPolicyContentSpecResponseGkehubV1beta policyContent;

  /// Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.
  final bool referentialRulesEnabled;

  PolicyControllerHubConfigResponseGkehubV1beta({
    required this.auditIntervalSeconds,
    required this.constraintViolationLimit,
    required this.deploymentConfigs,
    required this.exemptableNamespaces,
    required this.installSpec,
    required this.logDeniesEnabled,
    required this.monitoring,
    required this.mutationEnabled,
    required this.policyContent,
    required this.referentialRulesEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['auditIntervalSeconds'] = auditIntervalSeconds;
    map['constraintViolationLimit'] = constraintViolationLimit;
    map['deploymentConfigs'] = deploymentConfigs;
    map['exemptableNamespaces'] = exemptableNamespaces;
    map['installSpec'] = installSpec;
    map['logDeniesEnabled'] = logDeniesEnabled;
    map['monitoring'] = monitoring.toMap();
    map['mutationEnabled'] = mutationEnabled;
    map['policyContent'] = policyContent.toMap();
    map['referentialRulesEnabled'] = referentialRulesEnabled;
    return map;
  }

  factory PolicyControllerHubConfigResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return PolicyControllerHubConfigResponseGkehubV1beta(
      auditIntervalSeconds: map['auditIntervalSeconds'] as String,
      constraintViolationLimit: map['constraintViolationLimit'] as String,
      deploymentConfigs:
          (map['deploymentConfigs'] as Map).cast<String, String>(),
      exemptableNamespaces:
          (map['exemptableNamespaces'] as List).cast<String>(),
      installSpec: map['installSpec'] as String,
      logDeniesEnabled: map['logDeniesEnabled'] as bool,
      monitoring: PolicyControllerMonitoringConfigResponseGkehubV1beta.fromMap(
          (map['monitoring'] as Map).cast<String, dynamic>()),
      mutationEnabled: map['mutationEnabled'] as bool,
      policyContent:
          PolicyControllerPolicyContentSpecResponseGkehubV1beta.fromMap(
              (map['policyContent'] as Map).cast<String, dynamic>()),
      referentialRulesEnabled: map['referentialRulesEnabled'] as bool,
    );
  }
}
