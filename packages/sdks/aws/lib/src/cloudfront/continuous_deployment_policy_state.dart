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
  /// CloudFront domain name of the staging distribution. See `stagingDistributionDnsNames`.
  final pulumi.Input<ContinuousDeploymentPolicyStagingDistributionDnsNames>? stagingDistributionDnsNames;
  /// Parameters for routing production traffic from primary to staging distributions. See `trafficConfig`.
  final pulumi.Input<ContinuousDeploymentPolicyTrafficConfig>? trafficConfig;

  /// Creates a new [ContinuousDeploymentPolicyState].
  /// [arn] The continuous deployment policy ARN.
  /// [enabled] Whether this continuous deployment policy is enabled.
  /// [etag] Current version of the continuous distribution policy.
  /// [lastModifiedTime] Date and time the continuous deployment policy was last modified.
  /// [stagingDistributionDnsNames] CloudFront domain name of the staging distribution. See `stagingDistributionDnsNames`.
  /// [trafficConfig] Parameters for routing production traffic from primary to staging distributions. See `trafficConfig`.
  const ContinuousDeploymentPolicyState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stagingDistributionDnsNames: (() { final guardedValue = map['stagingDistributionDnsNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContinuousDeploymentPolicyStagingDistributionDnsNames.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trafficConfig: (() { final guardedValue = map['trafficConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContinuousDeploymentPolicyTrafficConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
