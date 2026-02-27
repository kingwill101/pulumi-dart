import 'package:pulumi/pulumi.dart';
import '../deployment_timeouts/deployment_timeouts.dart';
import 'deployment_args4.dart';

/// Manages an App Runner Deployment Operation.
class DeploymentType4 extends CustomResource {
  /// The unique ID of the operation associated with deployment.
  late final Output<String> operationId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the App Runner service to start the deployment for.
  late final Output<String> serviceArn;

  /// The current status of the App Runner service deployment.
  late final Output<String> status;
  late final Output<DeploymentTimeouts?> timeouts;

  DeploymentType4(
    String name, {
    DeploymentArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apprunner/deployment:Deployment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.operationId = registerOutput<String>('operationId');
    this.region = registerOutput<String>('region');
    this.serviceArn = registerOutput<String>('serviceArn');
    this.status = registerOutput<String>('status');
    this.timeouts = registerOutput<DeploymentTimeouts?>('timeouts');
  }
}
