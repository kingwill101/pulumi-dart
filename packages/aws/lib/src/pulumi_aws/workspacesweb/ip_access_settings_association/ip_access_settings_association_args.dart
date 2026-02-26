// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for IpAccessSettingsAssociation.
class IpAccessSettingsAssociationArgs {
  /// ARN of the IP access settings to associate with the portal. Forces replacement if changed.
  final Input<String> ipAccessSettingsArn;

  /// ARN of the portal to associate with the IP access settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  final Input<String> portalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  IpAccessSettingsAssociationArgs({
    required this.ipAccessSettingsArn,
    required this.portalArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipAccessSettingsArn'] = ipAccessSettingsArn;
    map['portalArn'] = portalArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory IpAccessSettingsAssociationArgs.fromMap(Map<String, dynamic> map) {
    return IpAccessSettingsAssociationArgs(
      ipAccessSettingsArn: Input.asInput<String>(map['ipAccessSettingsArn']),
      portalArn: Input.asInput<String>(map['portalArn']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
