import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_args.dart';

class DeploymentType extends pulumi.ComponentResource {
  /// The IP Address of the global service
  late final pulumi.Output<String> ipAddress;

  /// Creates a new [DeploymentType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentType]. {@macro pulumi_index_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
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
