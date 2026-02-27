// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../continuous_deployment_policy_staging_distribution_dns_names/continuous_deployment_policy_staging_distribution_dns_names.dart';
import '../continuous_deployment_policy_traffic_config/continuous_deployment_policy_traffic_config.dart';

/// The set of arguments for ContinuousDeploymentPolicy.
class ContinuousDeploymentPolicyArgs {
  /// Whether this continuous deployment policy is enabled.
  final pulumi.Input<bool> enabled;

  /// CloudFront domain name of the staging distribution. See `staging_distribution_dns_names`.
  final pulumi.Input<ContinuousDeploymentPolicyStagingDistributionDnsNames>
      stagingDistributionDnsNames;

  /// Parameters for routing production traffic from primary to staging distributions. See `traffic_config`.
  final pulumi.Input<ContinuousDeploymentPolicyTrafficConfig>? trafficConfig;

  ContinuousDeploymentPolicyArgs({
    required this.enabled,
    required this.stagingDistributionDnsNames,
    this.trafficConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['stagingDistributionDnsNames'] = pulumi.Input.mapInputValue<
            ContinuousDeploymentPolicyStagingDistributionDnsNames,
            Map<String, dynamic>>(
        stagingDistributionDnsNames, (value) => value.toMap());
    final trafficConfigValue = trafficConfig;
    if (trafficConfigValue != null) {
      map['trafficConfig'] = pulumi.Input.mapOptionalInputValue<
          ContinuousDeploymentPolicyTrafficConfig,
          Map<String, dynamic>>(trafficConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ContinuousDeploymentPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ContinuousDeploymentPolicyArgs(
      enabled: pulumi.Input.asInput<bool>(map['enabled']),
      stagingDistributionDnsNames: pulumi.Input.asInput<
              ContinuousDeploymentPolicyStagingDistributionDnsNames>(
          map['stagingDistributionDnsNames']),
      trafficConfig:
          pulumi.Input.asOptionalInput<ContinuousDeploymentPolicyTrafficConfig>(
              map['trafficConfig']),
    );
  }
}
