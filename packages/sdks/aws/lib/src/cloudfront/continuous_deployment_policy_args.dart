// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'continuous_deployment_policy_staging_distribution_dns_names.dart';
import 'continuous_deployment_policy_traffic_config.dart';

/// {@template pulumi_cloudfront_continuous_deployment_policy_continuous_deployment_policy_args_doc}
/// The set of arguments for ContinuousDeploymentPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_continuous_deployment_policy_continuous_deployment_policy_args_doc}
class ContinuousDeploymentPolicyArgs {
  /// Whether this continuous deployment policy is enabled.
  final pulumi.Input<bool> enabled;
  /// CloudFront domain name of the staging distribution. See `staging_distribution_dns_names`.
  final pulumi.Input<ContinuousDeploymentPolicyStagingDistributionDnsNames> stagingDistributionDnsNames;
  /// Parameters for routing production traffic from primary to staging distributions. See `traffic_config`.
  final pulumi.Input<ContinuousDeploymentPolicyTrafficConfig>? trafficConfig;

  /// Creates a new [ContinuousDeploymentPolicyArgs].
  /// [enabled] Whether this continuous deployment policy is enabled.
  /// [stagingDistributionDnsNames] CloudFront domain name of the staging distribution. See `staging_distribution_dns_names`.
  /// [trafficConfig] Parameters for routing production traffic from primary to staging distributions. See `traffic_config`.
  ContinuousDeploymentPolicyArgs({
    required this.enabled,
    required this.stagingDistributionDnsNames,
    this.trafficConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'stagingDistributionDnsNames': pulumi.Input.mapInputValue<ContinuousDeploymentPolicyStagingDistributionDnsNames, Map<String, dynamic>>(stagingDistributionDnsNames, (value) => value.toMap()),
      'trafficConfig': ?pulumi.Input.mapOptionalInputValue<ContinuousDeploymentPolicyTrafficConfig, Map<String, dynamic>>(trafficConfig, (value) => value.toMap()),
    };
  }

  factory ContinuousDeploymentPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ContinuousDeploymentPolicyArgs(
      enabled: (map['enabled'] as bool).input(),
      stagingDistributionDnsNames: (ContinuousDeploymentPolicyStagingDistributionDnsNames.fromMap((map['stagingDistributionDnsNames'] as Map).cast<String, dynamic>())).input(),
      trafficConfig: map['trafficConfig'] == null ? null : (ContinuousDeploymentPolicyTrafficConfig.fromMap((map['trafficConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

