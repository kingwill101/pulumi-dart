import 'package:pulumi/pulumi.dart' as pulumi;
import '../deployment_timeouts/deployment_timeouts.dart';
import 'deployment_apprunner_args.dart';

/// Manages an App Runner Deployment Operation.
class DeploymentApprunner extends pulumi.CustomResource {
  /// The unique ID of the operation associated with deployment.
  late final pulumi.Output<String> operationId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) of the App Runner service to start the deployment for.
  late final pulumi.Output<String> serviceArn;

  /// The current status of the App Runner service deployment.
  late final pulumi.Output<String> status;
  late final pulumi.Output<DeploymentTimeouts?> timeouts;

  DeploymentApprunner(
    String name, {
    DeploymentApprunnerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apprunner/deployment:Deployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.operationId = registerOutput<String>('operationId');
    this.region = registerOutput<String>('region');
    this.serviceArn = registerOutput<String>('serviceArn');
    this.status = registerOutput<String>('status');
    this.timeouts = registerOutput<DeploymentTimeouts?>('timeouts');
  }
}
