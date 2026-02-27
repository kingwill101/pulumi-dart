import 'package:pulumi/pulumi.dart' as pulumi;
import '../deployment_config_minimum_healthy_hosts/deployment_config_minimum_healthy_hosts.dart';
import '../deployment_config_traffic_routing_config/deployment_config_traffic_routing_config.dart';
import '../deployment_config_zonal_config/deployment_config_zonal_config.dart';
import 'deployment_config_args.dart';

/// Provides a CodeDeploy deployment config for an application
///
/// ## Example Usage
///
/// ### Server Usage
///
///
///
/// ### Lambda Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CodeDeploy Deployment Configurations using the `deployment_config_name`. For example:
///
/// ```sh
/// $ pulumi import aws:codedeploy/deploymentConfig:DeploymentConfig example my-deployment-config
/// ```
class DeploymentConfig extends pulumi.CustomResource {
  /// The ARN of the deployment config.
  late final pulumi.Output<String> arn;

  /// The compute platform can be `Server`, `Lambda`, or `ECS`. Default is `Server`.
  late final pulumi.Output<String?> computePlatform;

  /// The AWS Assigned deployment config id
  late final pulumi.Output<String> deploymentConfigId;

  /// The name of the deployment config.
  late final pulumi.Output<String> deploymentConfigName;

  /// A minimum_healthy_hosts block. Required for `Server` compute platform. Minimum Healthy Hosts are documented below.
  late final pulumi.Output<DeploymentConfigMinimumHealthyHosts?>
      minimumHealthyHosts;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A traffic_routing_config block. Traffic Routing Config is documented below.
  late final pulumi.Output<DeploymentConfigTrafficRoutingConfig?>
      trafficRoutingConfig;

  /// A zonal_config block. Zonal Config is documented below.
  late final pulumi.Output<DeploymentConfigZonalConfig?> zonalConfig;

  DeploymentConfig(
    String name, {
    DeploymentConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codedeploy/deploymentConfig:DeploymentConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.computePlatform = registerOutput<String?>('computePlatform');
    this.deploymentConfigId = registerOutput<String>('deploymentConfigId');
    this.deploymentConfigName = registerOutput<String>('deploymentConfigName');
    this.minimumHealthyHosts =
        registerOutput<DeploymentConfigMinimumHealthyHosts?>(
            'minimumHealthyHosts');
    this.region = registerOutput<String>('region');
    this.trafficRoutingConfig =
        registerOutput<DeploymentConfigTrafficRoutingConfig?>(
            'trafficRoutingConfig');
    this.zonalConfig =
        registerOutput<DeploymentConfigZonalConfig?>('zonalConfig');
  }
}
