import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_settings_association_args.dart';

/// Resource for managing an AWS WorkSpaces Web Network Settings Association.
///
/// ## Example Usage
///
/// ### Basic Usage
class NetworkSettingsAssociation extends pulumi.CustomResource {
  /// ARN of the network settings to associate with the portal. Forces replacement if changed.
  late final pulumi.Output<String> networkSettingsArn;

  /// ARN of the portal to associate with the network settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> portalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  NetworkSettingsAssociation(
    String name, {
    NetworkSettingsAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/networkSettingsAssociation:NetworkSettingsAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.networkSettingsArn = registerOutput<String>('networkSettingsArn');
    this.portalArn = registerOutput<String>('portalArn');
    this.region = registerOutput<String>('region');
  }
}
