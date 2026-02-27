import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_settings_association_args.dart';

/// Resource for managing an AWS WorkSpaces Web User Settings Association.
///
/// ## Example Usage
///
/// ### Basic Usage
class UserSettingsAssociation extends pulumi.CustomResource {
  /// ARN of the portal to associate with the user settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> portalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of the user settings to associate with the portal. Forces replacement if changed.
  late final pulumi.Output<String> userSettingsArn;

  UserSettingsAssociation(
    String name, {
    UserSettingsAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/userSettingsAssociation:UserSettingsAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.portalArn = registerOutput<String>('portalArn');
    this.region = registerOutput<String>('region');
    this.userSettingsArn = registerOutput<String>('userSettingsArn');
  }
}
