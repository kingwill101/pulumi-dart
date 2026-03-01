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
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? lastModifiedTime,
    pulumi.Output<ContinuousDeploymentPolicyStagingDistributionDnsNames>? stagingDistributionDnsNames,
    pulumi.Output<ContinuousDeploymentPolicyTrafficConfig>? trafficConfig,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      lastModifiedTime = pulumi.Input.asOptionalInput<String>(lastModifiedTime),
      stagingDistributionDnsNames = pulumi.Input.asOptionalInput<ContinuousDeploymentPolicyStagingDistributionDnsNames>(stagingDistributionDnsNames),
      trafficConfig = pulumi.Input.asOptionalInput<ContinuousDeploymentPolicyTrafficConfig>(trafficConfig);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : pulumi.Output.create<String>(map['lastModifiedTime'] as String),
      stagingDistributionDnsNames: map['stagingDistributionDnsNames'] == null ? null : pulumi.Output.create<ContinuousDeploymentPolicyStagingDistributionDnsNames>(ContinuousDeploymentPolicyStagingDistributionDnsNames.fromMap((map['stagingDistributionDnsNames'] as Map).cast<String, dynamic>())),
      trafficConfig: map['trafficConfig'] == null ? null : pulumi.Output.create<ContinuousDeploymentPolicyTrafficConfig>(ContinuousDeploymentPolicyTrafficConfig.fromMap((map['trafficConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

