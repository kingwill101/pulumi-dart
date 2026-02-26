// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for UserAccessLoggingSettingsAssociation.
class UserAccessLoggingSettingsAssociationArgs {
  /// ARN of the portal to associate with the user access logging settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  final Input<String> portalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of the user access logging settings to associate with the portal. Forces replacement if changed.
  final Input<String> userAccessLoggingSettingsArn;

  UserAccessLoggingSettingsAssociationArgs({
    required this.portalArn,
    this.region,
    required this.userAccessLoggingSettingsArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['portalArn'] = portalArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['userAccessLoggingSettingsArn'] = userAccessLoggingSettingsArn;
    return map;
  }

  factory UserAccessLoggingSettingsAssociationArgs.fromMap(
      Map<String, dynamic> map) {
    return UserAccessLoggingSettingsAssociationArgs(
      portalArn: Input.asInput<String>(map['portalArn']),
      region: Input.asOptionalInput<String>(map['region']),
      userAccessLoggingSettingsArn:
          Input.asInput<String>(map['userAccessLoggingSettingsArn']),
    );
  }
}
