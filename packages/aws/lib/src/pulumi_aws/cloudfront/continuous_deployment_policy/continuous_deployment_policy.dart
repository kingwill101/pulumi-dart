import 'package:pulumi/pulumi.dart' as pulumi;
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
class ContinuousDeploymentPolicy extends pulumi.CustomResource {
  /// The continuous deployment policy ARN.
  late final pulumi.Output<String> arn;

  /// Whether this continuous deployment policy is enabled.
  late final pulumi.Output<bool> enabled;

  /// Current version of the continuous distribution policy.
  late final pulumi.Output<String> etag;

  /// Date and time the continuous deployment policy was last modified.
  late final pulumi.Output<String> lastModifiedTime;

  /// CloudFront domain name of the staging distribution. See `staging_distribution_dns_names`.
  late final pulumi
      .Output<ContinuousDeploymentPolicyStagingDistributionDnsNames>
      stagingDistributionDnsNames;

  /// Parameters for routing production traffic from primary to staging distributions. See `traffic_config`.
  late final pulumi.Output<ContinuousDeploymentPolicyTrafficConfig?>
      trafficConfig;

  ContinuousDeploymentPolicy(
    String name, {
    ContinuousDeploymentPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/continuousDeploymentPolicy:ContinuousDeploymentPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
