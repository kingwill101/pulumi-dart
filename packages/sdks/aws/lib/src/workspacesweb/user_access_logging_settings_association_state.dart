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
  UserAccessLoggingSettingsAssociationState({
    pulumi.Output<String>? portalArn,
    pulumi.Output<String>? region,
    pulumi.Output<String>? userAccessLoggingSettingsArn,
  }) :
      portalArn = pulumi.Input.asOptionalInput<String>(portalArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      userAccessLoggingSettingsArn = pulumi.Input.asOptionalInput<String>(userAccessLoggingSettingsArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portalArn': ?portalArn,
      'region': ?region,
      'userAccessLoggingSettingsArn': ?userAccessLoggingSettingsArn,
    };
  }

  factory UserAccessLoggingSettingsAssociationState.fromMap(Map<String, dynamic> map) {
    return UserAccessLoggingSettingsAssociationState(
      portalArn: map['portalArn'] == null ? null : pulumi.Output.create<String>(map['portalArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      userAccessLoggingSettingsArn: map['userAccessLoggingSettingsArn'] == null ? null : pulumi.Output.create<String>(map['userAccessLoggingSettingsArn'] as String),
    );
  }
}

