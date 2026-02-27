import 'package:pulumi/pulumi.dart';
import '../deployment_timeouts/deployment_timeouts2.dart';
import 'deployment_args5.dart';

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
class DeploymentType5 extends CustomResource {
  /// Application to deploy.
  late final Output<String> applicationId;

  /// Version to application to deploy
  late final Output<int> applicationVersion;
  late final Output<String> deploymentId;

  /// Environment to deploy application to.
  late final Output<String> environmentId;
  late final Output<bool?> forceStop;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Start the application once deployed.
  late final Output<bool> start;
  late final Output<DeploymentTimeouts2?> timeouts;

  DeploymentType5(
    String name, {
    DeploymentArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:m2/deployment:Deployment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.applicationVersion = registerOutput<int>('applicationVersion');
    this.deploymentId = registerOutput<String>('deploymentId');
    this.environmentId = registerOutput<String>('environmentId');
    this.forceStop = registerOutput<bool?>('forceStop');
    this.region = registerOutput<String>('region');
    this.start = registerOutput<bool>('start');
    this.timeouts = registerOutput<DeploymentTimeouts2?>('timeouts');
  }
}
