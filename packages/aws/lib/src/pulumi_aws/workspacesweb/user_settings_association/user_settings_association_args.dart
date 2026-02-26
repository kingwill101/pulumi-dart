// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for UserSettingsAssociation.
class UserSettingsAssociationArgs {
  /// ARN of the portal to associate with the user settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  final Input<String> portalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of the user settings to associate with the portal. Forces replacement if changed.
  final Input<String> userSettingsArn;

  UserSettingsAssociationArgs({
    required this.portalArn,
    this.region,
    required this.userSettingsArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['portalArn'] = portalArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['userSettingsArn'] = userSettingsArn;
    return map;
  }

  factory UserSettingsAssociationArgs.fromMap(Map<String, dynamic> map) {
    return UserSettingsAssociationArgs(
      portalArn: Input.asInput<String>(map['portalArn']),
      region: Input.asOptionalInput<String>(map['region']),
      userSettingsArn: Input.asInput<String>(map['userSettingsArn']),
    );
  }
}
