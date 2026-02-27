import 'package:pulumi/pulumi.dart';
import 'user_access_logging_settings_association_args.dart';

/// Resource for managing an AWS WorkSpaces Web User Access Logging Settings Association.
///
/// ## Example Usage
///
/// ### Basic Usage
class UserAccessLoggingSettingsAssociation extends CustomResource {
  /// ARN of the portal to associate with the user access logging settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  late final Output<String> portalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the user access logging settings to associate with the portal. Forces replacement if changed.
  late final Output<String> userAccessLoggingSettingsArn;

  UserAccessLoggingSettingsAssociation(
    String name, {
    UserAccessLoggingSettingsAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/userAccessLoggingSettingsAssociation:UserAccessLoggingSettingsAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.portalArn = registerOutput<String>('portalArn');
    this.region = registerOutput<String>('region');
    this.userAccessLoggingSettingsArn =
        registerOutput<String>('userAccessLoggingSettingsArn');
  }
}
