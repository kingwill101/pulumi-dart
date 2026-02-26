// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../continuous_deployment_policy_staging_distribution_dns_names/continuous_deployment_policy_staging_distribution_dns_names.dart';
import '../continuous_deployment_policy_traffic_config/continuous_deployment_policy_traffic_config.dart';

/// The set of arguments for ContinuousDeploymentPolicy.
class ContinuousDeploymentPolicyArgs {
  /// Whether this continuous deployment policy is enabled.
  final Input<bool> enabled;

  /// CloudFront domain name of the staging distribution. See <span pulumi-lang-nodejs="`stagingDistributionDnsNames`" pulumi-lang-dotnet="`StagingDistributionDnsNames`" pulumi-lang-go="`stagingDistributionDnsNames`" pulumi-lang-python="`staging_distribution_dns_names`" pulumi-lang-yaml="`stagingDistributionDnsNames`" pulumi-lang-java="`stagingDistributionDnsNames`">`staging_distribution_dns_names`</span>.
  final Input<ContinuousDeploymentPolicyStagingDistributionDnsNames>
      stagingDistributionDnsNames;

  /// Parameters for routing production traffic from primary to staging distributions. See <span pulumi-lang-nodejs="`trafficConfig`" pulumi-lang-dotnet="`TrafficConfig`" pulumi-lang-go="`trafficConfig`" pulumi-lang-python="`traffic_config`" pulumi-lang-yaml="`trafficConfig`" pulumi-lang-java="`trafficConfig`">`traffic_config`</span>.
  final Input<ContinuousDeploymentPolicyTrafficConfig>? trafficConfig;

  ContinuousDeploymentPolicyArgs({
    required this.enabled,
    required this.stagingDistributionDnsNames,
    this.trafficConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['stagingDistributionDnsNames'] = Input.mapInputValue<
            ContinuousDeploymentPolicyStagingDistributionDnsNames,
            Map<String, dynamic>>(
        stagingDistributionDnsNames, (value) => value.toMap());
    final trafficConfigValue = trafficConfig;
    if (trafficConfigValue != null) {
      map['trafficConfig'] = Input.mapOptionalInputValue<
          ContinuousDeploymentPolicyTrafficConfig,
          Map<String, dynamic>>(trafficConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ContinuousDeploymentPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ContinuousDeploymentPolicyArgs(
      enabled: Input.asInput<bool>(map['enabled']),
      stagingDistributionDnsNames:
          Input.asInput<ContinuousDeploymentPolicyStagingDistributionDnsNames>(
              map['stagingDistributionDnsNames']),
      trafficConfig:
          Input.asOptionalInput<ContinuousDeploymentPolicyTrafficConfig>(
              map['trafficConfig']),
    );
  }
}
