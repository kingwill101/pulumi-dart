import 'package:pulumi/pulumi.dart';
import 'deployment_args.dart';

class DeploymentType extends ComponentResource {
  /// The IP Address of the global service
  late final Output<String> ipAddress;

  DeploymentType(
    String name, {
    DeploymentArgs? args,
    ComponentResourceOptions? options,
  }) : super(
          'gcp-global-cloudrun:index:Deployment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? ComponentResourceOptions(),
        ) {
    this.ipAddress = Output.createUnknown<String>();
  }
}
