// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserSettingsAssociation resources.
class UserSettingsAssociationState {
  /// ARN of the portal to associate with the user settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? portalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the user settings to associate with the portal. Forces replacement if changed.
  final pulumi.Input<String>? userSettingsArn;

  /// Creates a new [UserSettingsAssociationState].
  /// [portalArn] ARN of the portal to associate with the user settings. Forces replacement if changed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userSettingsArn] ARN of the user settings to associate with the portal. Forces replacement if changed.
  const UserSettingsAssociationState({
    this.portalArn,
    this.region,
    this.userSettingsArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portalArn': ?portalArn,
      'region': ?region,
      'userSettingsArn': ?userSettingsArn,
    };
  }

  factory UserSettingsAssociationState.fromMap(Map<String, dynamic> map) {
    return UserSettingsAssociationState(
      portalArn: (() { final guardedValue = map['portalArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userSettingsArn: (() { final guardedValue = map['userSettingsArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
