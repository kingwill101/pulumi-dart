import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_access_settings_association_args.dart';

/// Resource for managing an AWS WorkSpaces Web IP Access Settings Association.
///
/// ## Example Usage
///
/// ### Basic Usage
class IpAccessSettingsAssociation extends pulumi.CustomResource {
  /// ARN of the IP access settings to associate with the portal. Forces replacement if changed.
  late final pulumi.Output<String> ipAccessSettingsArn;

  /// ARN of the portal to associate with the IP access settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> portalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  IpAccessSettingsAssociation(
    String name, {
    IpAccessSettingsAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/ipAccessSettingsAssociation:IpAccessSettingsAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.ipAccessSettingsArn = registerOutput<String>('ipAccessSettingsArn');
    this.portalArn = registerOutput<String>('portalArn');
    this.region = registerOutput<String>('region');
  }
}
