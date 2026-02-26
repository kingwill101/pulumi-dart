// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for BrowserSettingsAssociation.
class BrowserSettingsAssociationArgs {
  /// ARN of the browser settings to associate with the portal. Forces replacement if changed.
  final Input<String> browserSettingsArn;

  /// ARN of the portal to associate with the browser settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  final Input<String> portalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  BrowserSettingsAssociationArgs({
    required this.browserSettingsArn,
    required this.portalArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['browserSettingsArn'] = browserSettingsArn;
    map['portalArn'] = portalArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory BrowserSettingsAssociationArgs.fromMap(Map<String, dynamic> map) {
    return BrowserSettingsAssociationArgs(
      browserSettingsArn: Input.asInput<String>(map['browserSettingsArn']),
      portalArn: Input.asInput<String>(map['portalArn']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
