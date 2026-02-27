import 'package:pulumi/pulumi.dart';
import '../continuous_deployment_policy_staging_distribution_dns_names/continuous_deployment_policy_staging_distribution_dns_names.dart';
import '../continuous_deployment_policy_traffic_config/continuous_deployment_policy_traffic_config.dart';
import 'continuous_deployment_policy_args.dart';

/// Resource for managing an AWS CloudFront Continuous Deployment Policy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Single Weight Config with Session Stickiness
///
///
///
/// ### Single Header Config
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront Continuous Deployment Policy using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/continuousDeploymentPolicy:ContinuousDeploymentPolicy example abcd-1234
/// ```
class ContinuousDeploymentPolicy extends CustomResource {
  /// The continuous deployment policy ARN.
  late final Output<String> arn;

  /// Whether this continuous deployment policy is enabled.
  late final Output<bool> enabled;

  /// Current version of the continuous distribution policy.
  late final Output<String> etag;

  /// Date and time the continuous deployment policy was last modified.
  late final Output<String> lastModifiedTime;

  /// CloudFront domain name of the staging distribution. See `staging_distribution_dns_names`.
  late final Output<ContinuousDeploymentPolicyStagingDistributionDnsNames>
      stagingDistributionDnsNames;

  /// Parameters for routing production traffic from primary to staging distributions. See `traffic_config`.
  late final Output<ContinuousDeploymentPolicyTrafficConfig?> trafficConfig;

  ContinuousDeploymentPolicy(
    String name, {
    ContinuousDeploymentPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/continuousDeploymentPolicy:ContinuousDeploymentPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.enabled = registerOutput<bool>('enabled');
    this.etag = registerOutput<String>('etag');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.stagingDistributionDnsNames =
        registerOutput<ContinuousDeploymentPolicyStagingDistributionDnsNames>(
            'stagingDistributionDnsNames');
    this.trafficConfig =
        registerOutput<ContinuousDeploymentPolicyTrafficConfig?>(
            'trafficConfig');
  }
}
