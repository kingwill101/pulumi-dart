// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BrowserSettingsAssociation resources.
class BrowserSettingsAssociationState {
  /// ARN of the browser settings to associate with the portal. Forces replacement if changed.
  final pulumi.Input<String>? browserSettingsArn;
  /// ARN of the portal to associate with the browser settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? portalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BrowserSettingsAssociationState].
  /// [browserSettingsArn] ARN of the browser settings to associate with the portal. Forces replacement if changed.
  /// [portalArn] ARN of the portal to associate with the browser settings. Forces replacement if changed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  BrowserSettingsAssociationState({
    this.browserSettingsArn,
    this.portalArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'browserSettingsArn': ?browserSettingsArn,
      'portalArn': ?portalArn,
      'region': ?region,
    };
  }

  factory BrowserSettingsAssociationState.fromMap(Map<String, dynamic> map) {
    return BrowserSettingsAssociationState(
      browserSettingsArn: map['browserSettingsArn'] == null ? null : (map['browserSettingsArn'] as String).input(),
      portalArn: map['portalArn'] == null ? null : (map['portalArn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

