// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workspacesweb_user_access_logging_settings_association_user_access_logging_settings_association_args_doc}
/// The set of arguments for UserAccessLoggingSettingsAssociation.
/// {@endtemplate}
/// {@macro pulumi_workspacesweb_user_access_logging_settings_association_user_access_logging_settings_association_args_doc}
class UserAccessLoggingSettingsAssociationArgs {
  /// ARN of the portal to associate with the user access logging settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> portalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the user access logging settings to associate with the portal. Forces replacement if changed.
  final pulumi.Input<String> userAccessLoggingSettingsArn;

  /// Creates a new [UserAccessLoggingSettingsAssociationArgs].
  /// [portalArn] ARN of the portal to associate with the user access logging settings. Forces replacement if changed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userAccessLoggingSettingsArn] ARN of the user access logging settings to associate with the portal. Forces replacement if changed.
  const UserAccessLoggingSettingsAssociationArgs({
    required this.portalArn,
    this.region,
    required this.userAccessLoggingSettingsArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portalArn': portalArn,
      'region': ?region,
      'userAccessLoggingSettingsArn': userAccessLoggingSettingsArn,
    };
  }

  factory UserAccessLoggingSettingsAssociationArgs.fromMap(Map<String, dynamic> map) {
    return UserAccessLoggingSettingsAssociationArgs(
      portalArn: pulumi.Input.fromValue(map['portalArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAccessLoggingSettingsArn: pulumi.Input.fromValue(map['userAccessLoggingSettingsArn'] as String),
    );
  }
}
