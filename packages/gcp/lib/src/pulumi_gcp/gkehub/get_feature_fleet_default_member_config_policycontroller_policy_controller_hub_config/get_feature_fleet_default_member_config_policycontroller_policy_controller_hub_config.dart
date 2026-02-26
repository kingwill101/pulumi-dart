// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_deployment_config/get_feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_deployment_config.dart';
import '../get_feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_monitoring/get_feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_monitoring.dart';
import '../get_feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_policy_content/get_feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_policy_content.dart';

class GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig {
  /// Interval for Policy Controller Audit scans (in seconds). When set to 0, this disables audit functionality altogether.
  final int auditIntervalSeconds;

  /// The maximum number of audit violations to be stored in a constraint. If not set, the internal default of 20 will be used.
  final int constraintViolationLimit;

  /// Map of deployment configs to deployments ("admission", "audit", "mutation").
  final List<
          GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig>
      deploymentConfigs;

  /// The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.
  final List<String> exemptableNamespaces;

  /// Configures the mode of the Policy Controller installation Possible values: ["INSTALL_SPEC_UNSPECIFIED", "INSTALL_SPEC_NOT_INSTALLED", "INSTALL_SPEC_ENABLED", "INSTALL_SPEC_SUSPENDED", "INSTALL_SPEC_DETACHED"]
  final String installSpec;

  /// Logs all denies and dry run failures.
  final bool logDeniesEnabled;

  /// Monitoring specifies the configuration of monitoring Policy Controller.
  final List<
          GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring>
      monitorings;

  /// Enables the ability to mutate resources using Policy Controller.
  final bool mutationEnabled;

  /// Specifies the desired policy content on the cluster.
  final List<
          GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent>
      policyContents;

  /// Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.
  final bool referentialRulesEnabled;

  GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig({
    required this.auditIntervalSeconds,
    required this.constraintViolationLimit,
    required this.deploymentConfigs,
    required this.exemptableNamespaces,
    required this.installSpec,
    required this.logDeniesEnabled,
    required this.monitorings,
    required this.mutationEnabled,
    required this.policyContents,
    required this.referentialRulesEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['auditIntervalSeconds'] = auditIntervalSeconds;
    map['constraintViolationLimit'] = constraintViolationLimit;
    map['deploymentConfigs'] = Input.encodeList<
        GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig,
        Map<String, dynamic>>(deploymentConfigs, (value) => value.toMap());
    map['exemptableNamespaces'] = exemptableNamespaces;
    map['installSpec'] = installSpec;
    map['logDeniesEnabled'] = logDeniesEnabled;
    map['monitorings'] = Input.encodeList<
        GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring,
        Map<String, dynamic>>(monitorings, (value) => value.toMap());
    map['mutationEnabled'] = mutationEnabled;
    map['policyContents'] = Input.encodeList<
        GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent,
        Map<String, dynamic>>(policyContents, (value) => value.toMap());
    map['referentialRulesEnabled'] = referentialRulesEnabled;
    return map;
  }

  factory GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig.fromMap(
      Map<String, dynamic> map) {
    return GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig(
      auditIntervalSeconds: map['auditIntervalSeconds'] as int,
      constraintViolationLimit: map['constraintViolationLimit'] as int,
      deploymentConfigs: Input.decodeList<
              GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig>(
          map['deploymentConfigs'],
          (value) =>
              GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
      exemptableNamespaces:
          (map['exemptableNamespaces'] as List).cast<String>(),
      installSpec: map['installSpec'] as String,
      logDeniesEnabled: map['logDeniesEnabled'] as bool,
      monitorings: Input.decodeList<
              GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring>(
          map['monitorings'],
          (value) =>
              GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring
                  .fromMap((value as Map).cast<String, dynamic>())),
      mutationEnabled: map['mutationEnabled'] as bool,
      policyContents: Input.decodeList<
              GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent>(
          map['policyContents'],
          (value) =>
              GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent
                  .fromMap((value as Map).cast<String, dynamic>())),
      referentialRulesEnabled: map['referentialRulesEnabled'] as bool,
    );
  }
}
