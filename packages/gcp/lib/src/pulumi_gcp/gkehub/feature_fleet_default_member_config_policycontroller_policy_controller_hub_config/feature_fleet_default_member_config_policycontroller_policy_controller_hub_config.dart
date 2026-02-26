// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_deployment_config/feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_deployment_config.dart';
import '../feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_monitoring/feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_monitoring.dart';
import '../feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_policy_content/feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_policy_content.dart';

class FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig {
  /// Interval for Policy Controller Audit scans (in seconds). When set to 0, this disables audit functionality altogether.
  final int? auditIntervalSeconds;

  /// The maximum number of audit violations to be stored in a constraint. If not set, the internal default of 20 will be used.
  final int? constraintViolationLimit;

  /// Map of deployment configs to deployments ("admission", "audit", "mutation").
  /// Structure is documented below.
  final List<
          FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig>?
      deploymentConfigs;

  /// The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.
  final List<String>? exemptableNamespaces;

  /// Configures the mode of the Policy Controller installation
  /// Possible values are: `INSTALL_SPEC_UNSPECIFIED`, `INSTALL_SPEC_NOT_INSTALLED`, `INSTALL_SPEC_ENABLED`, `INSTALL_SPEC_SUSPENDED`, `INSTALL_SPEC_DETACHED`.
  final String installSpec;

  /// Logs all denies and dry run failures.
  final bool? logDeniesEnabled;

  /// Monitoring specifies the configuration of monitoring Policy Controller.
  /// Structure is documented below.
  final FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring?
      monitoring;

  /// Enables the ability to mutate resources using Policy Controller.
  final bool? mutationEnabled;

  /// Specifies the desired policy content on the cluster.
  /// Structure is documented below.
  final FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent?
      policyContent;

  /// Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.
  final bool? referentialRulesEnabled;

  FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig({
    this.auditIntervalSeconds,
    this.constraintViolationLimit,
    this.deploymentConfigs,
    this.exemptableNamespaces,
    required this.installSpec,
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
      map['deploymentConfigs'] = Input.encodeList<
          FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig,
          Map<String,
              dynamic>>(deploymentConfigsValue, (value) => value.toMap());
    }
    final exemptableNamespacesValue = exemptableNamespaces;
    if (exemptableNamespacesValue != null) {
      map['exemptableNamespaces'] = exemptableNamespacesValue;
    }
    map['installSpec'] = installSpec;
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

  factory FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig.fromMap(
      Map<String, dynamic> map) {
    return FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig(
      auditIntervalSeconds: map['auditIntervalSeconds'] == null
          ? null
          : map['auditIntervalSeconds'] as int,
      constraintViolationLimit: map['constraintViolationLimit'] == null
          ? null
          : map['constraintViolationLimit'] as int,
      deploymentConfigs: map['deploymentConfigs'] == null
          ? null
          : Input.decodeList<
                  FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig>(
              map['deploymentConfigs'],
              (value) =>
                  FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      exemptableNamespaces: map['exemptableNamespaces'] == null
          ? null
          : (map['exemptableNamespaces'] as List).cast<String>(),
      installSpec: map['installSpec'] as String,
      logDeniesEnabled: map['logDeniesEnabled'] == null
          ? null
          : map['logDeniesEnabled'] as bool,
      monitoring: map['monitoring'] == null
          ? null
          : FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring
              .fromMap((map['monitoring'] as Map).cast<String, dynamic>()),
      mutationEnabled: map['mutationEnabled'] == null
          ? null
          : map['mutationEnabled'] as bool,
      policyContent: map['policyContent'] == null
          ? null
          : FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent
              .fromMap((map['policyContent'] as Map).cast<String, dynamic>()),
      referentialRulesEnabled: map['referentialRulesEnabled'] == null
          ? null
          : map['referentialRulesEnabled'] as bool,
    );
  }
}
