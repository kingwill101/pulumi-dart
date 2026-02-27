import 'package:pulumi/pulumi.dart' as pulumi;
import '../deployment_timeouts/deployment_timeouts_m2.dart';
import 'deployment_m2_args.dart';

/// Resource for managing an [AWS Mainframe Modernization Deployment.](https://docs.aws.amazon.com/m2/latest/userguide/applications-m2-deploy.html)
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Mainframe Modernization Deployment using the `APPLICATION-ID,DEPLOYMENT-ID`. For example:
///
/// ```sh
/// $ pulumi import aws:m2/deployment:Deployment example APPLICATION-ID,DEPLOYMENT-ID
/// ```
class DeploymentM2 extends pulumi.CustomResource {
  /// Application to deploy.
  late final pulumi.Output<String> applicationId;

  /// Version to application to deploy
  late final pulumi.Output<int> applicationVersion;
  late final pulumi.Output<String> deploymentId;

  /// Environment to deploy application to.
  late final pulumi.Output<String> environmentId;
  late final pulumi.Output<bool?> forceStop;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Start the application once deployed.
  late final pulumi.Output<bool> start;
  late final pulumi.Output<DeploymentTimeoutsM2?> timeouts;

  DeploymentM2(
    String name, {
    DeploymentM2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:m2/deployment:Deployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.applicationVersion = registerOutput<int>('applicationVersion');
    this.deploymentId = registerOutput<String>('deploymentId');
    this.environmentId = registerOutput<String>('environmentId');
    this.forceStop = registerOutput<bool?>('forceStop');
    this.region = registerOutput<String>('region');
    this.start = registerOutput<bool>('start');
    this.timeouts = registerOutput<DeploymentTimeoutsM2?>('timeouts');
  }
}
