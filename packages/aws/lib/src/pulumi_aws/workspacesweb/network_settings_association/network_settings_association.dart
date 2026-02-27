import 'package:pulumi/pulumi.dart';
import 'network_settings_association_args.dart';

/// Resource for managing an AWS WorkSpaces Web Network Settings Association.
///
/// ## Example Usage
///
/// ### Basic Usage
class NetworkSettingsAssociation extends CustomResource {
  /// ARN of the network settings to associate with the portal. Forces replacement if changed.
  late final Output<String> networkSettingsArn;

  /// ARN of the portal to associate with the network settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  late final Output<String> portalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  NetworkSettingsAssociation(
    String name, {
    NetworkSettingsAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/networkSettingsAssociation:NetworkSettingsAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.networkSettingsArn = registerOutput<String>('networkSettingsArn');
    this.portalArn = registerOutput<String>('portalArn');
    this.region = registerOutput<String>('region');
  }
}
