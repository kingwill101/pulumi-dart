import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_args.dart';

class DeploymentType extends pulumi.ComponentResource {
  /// The IP Address of the global service
  late final pulumi.Output<String> ipAddress;

  DeploymentType(
    String name, {
    DeploymentArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
          'gcp-global-cloudrun:index:Deployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.ComponentResourceOptions(),
        ) {
    this.ipAddress = registerOutput<String>('ipAddress');
  }
}
