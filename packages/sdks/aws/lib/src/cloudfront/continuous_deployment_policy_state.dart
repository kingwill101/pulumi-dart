// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'continuous_deployment_policy_staging_distribution_dns_names.dart';
import 'continuous_deployment_policy_traffic_config.dart';

/// Input properties used for looking up and filtering ContinuousDeploymentPolicy resources.
class ContinuousDeploymentPolicyState {
  /// The continuous deployment policy ARN.
  final pulumi.Input<String>? arn;
  /// Whether this continuous deployment policy is enabled.
  final pulumi.Input<bool>? enabled;
  /// Current version of the continuous distribution policy.
  final pulumi.Input<String>? etag;
  /// Date and time the continuous deployment policy was last modified.
  final pulumi.Input<String>? lastModifiedTime;
  /// CloudFront domain name of the staging distribution. See `staging_distribution_dns_names`.
  final pulumi.Input<ContinuousDeploymentPolicyStagingDistributionDnsNames>? stagingDistributionDnsNames;
  /// Parameters for routing production traffic from primary to staging distributions. See `traffic_config`.
  final pulumi.Input<ContinuousDeploymentPolicyTrafficConfig>? trafficConfig;

  /// Creates a new [ContinuousDeploymentPolicyState].
  /// [arn] The continuous deployment policy ARN.
  /// [enabled] Whether this continuous deployment policy is enabled.
  /// [etag] Current version of the continuous distribution policy.
  /// [lastModifiedTime] Date and time the continuous deployment policy was last modified.
  /// [stagingDistributionDnsNames] CloudFront domain name of the staging distribution. See `staging_distribution_dns_names`.
  /// [trafficConfig] Parameters for routing production traffic from primary to staging distributions. See `traffic_config`.
  ContinuousDeploymentPolicyState({
    this.arn,
    this.enabled,
    this.etag,
    this.lastModifiedTime,
    this.stagingDistributionDnsNames,
    this.trafficConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'enabled': ?enabled,
      'etag': ?etag,
      'lastModifiedTime': ?lastModifiedTime,
      'stagingDistributionDnsNames': ?pulumi.Input.mapOptionalInputValue<ContinuousDeploymentPolicyStagingDistributionDnsNames, Map<String, dynamic>>(stagingDistributionDnsNames, (value) => value.toMap()),
      'trafficConfig': ?pulumi.Input.mapOptionalInputValue<ContinuousDeploymentPolicyTrafficConfig, Map<String, dynamic>>(trafficConfig, (value) => value.toMap()),
    };
  }

  factory ContinuousDeploymentPolicyState.fromMap(Map<String, dynamic> map) {
    return ContinuousDeploymentPolicyState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : (map['lastModifiedTime'] as String).input(),
      stagingDistributionDnsNames: map['stagingDistributionDnsNames'] == null ? null : (ContinuousDeploymentPolicyStagingDistributionDnsNames.fromMap((map['stagingDistributionDnsNames'] as Map).cast<String, dynamic>())).input(),
      trafficConfig: map['trafficConfig'] == null ? null : (ContinuousDeploymentPolicyTrafficConfig.fromMap((map['trafficConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

