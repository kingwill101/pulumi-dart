// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workspacesweb_user_settings_association_user_settings_association_args_doc}
/// The set of arguments for UserSettingsAssociation.
/// {@endtemplate}
/// {@macro pulumi_workspacesweb_user_settings_association_user_settings_association_args_doc}
class UserSettingsAssociationArgs {
  /// ARN of the portal to associate with the user settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> portalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the user settings to associate with the portal. Forces replacement if changed.
  final pulumi.Input<String> userSettingsArn;

  /// Creates a new [UserSettingsAssociationArgs].
  /// [portalArn] ARN of the portal to associate with the user settings. Forces replacement if changed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userSettingsArn] ARN of the user settings to associate with the portal. Forces replacement if changed.
  UserSettingsAssociationArgs({
    required this.portalArn,
    this.region,
    required this.userSettingsArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portalArn': portalArn,
      'region': ?region,
      'userSettingsArn': userSettingsArn,
    };
  }

  factory UserSettingsAssociationArgs.fromMap(Map<String, dynamic> map) {
    return UserSettingsAssociationArgs(
      portalArn: (map['portalArn'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      userSettingsArn: (map['userSettingsArn'] as String).input(),
    );
  }
}

