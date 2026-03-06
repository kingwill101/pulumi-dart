// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserAccessLoggingSettingsAssociation resources.
class UserAccessLoggingSettingsAssociationState {
  /// ARN of the portal to associate with the user access logging settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? portalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the user access logging settings to associate with the portal. Forces replacement if changed.
  final pulumi.Input<String>? userAccessLoggingSettingsArn;

  /// Creates a new [UserAccessLoggingSettingsAssociationState].
  /// [portalArn] ARN of the portal to associate with the user access logging settings. Forces replacement if changed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userAccessLoggingSettingsArn] ARN of the user access logging settings to associate with the portal. Forces replacement if changed.
  const UserAccessLoggingSettingsAssociationState({
    this.portalArn,
    this.region,
    this.userAccessLoggingSettingsArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portalArn': ?portalArn,
      'region': ?region,
      'userAccessLoggingSettingsArn': ?userAccessLoggingSettingsArn,
    };
  }

  factory UserAccessLoggingSettingsAssociationState.fromMap(Map<String, dynamic> map) {
    return UserAccessLoggingSettingsAssociationState(
      portalArn: (() { final guardedValue = map['portalArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAccessLoggingSettingsArn: (() { final guardedValue = map['userAccessLoggingSettingsArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

