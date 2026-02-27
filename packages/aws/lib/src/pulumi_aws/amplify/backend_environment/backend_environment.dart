import 'package:pulumi/pulumi.dart';
import 'backend_environment_args.dart';

/// Provides an Amplify Backend Environment resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Amplify backend environment using `app_id` and `environment_name`. For example:
///
/// ```sh
/// $ pulumi import aws:amplify/backendEnvironment:BackendEnvironment example d2ypk4k47z8u6/example
/// ```
class BackendEnvironment extends CustomResource {
  /// Unique ID for an Amplify app.
  late final Output<String> appId;

  /// ARN for a backend environment that is part of an Amplify app.
  late final Output<String> arn;

  /// Name of deployment artifacts.
  late final Output<String> deploymentArtifacts;

  /// Name for the backend environment.
  late final Output<String> environmentName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// AWS CloudFormation stack name of a backend environment.
  late final Output<String> stackName;

  BackendEnvironment(
    String name, {
    BackendEnvironmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:amplify/backendEnvironment:BackendEnvironment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.arn = registerOutput<String>('arn');
    this.deploymentArtifacts = registerOutput<String>('deploymentArtifacts');
    this.environmentName = registerOutput<String>('environmentName');
    this.region = registerOutput<String>('region');
    this.stackName = registerOutput<String>('stackName');
  }
}
