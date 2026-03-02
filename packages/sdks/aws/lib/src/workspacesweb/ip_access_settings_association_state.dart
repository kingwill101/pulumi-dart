// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IpAccessSettingsAssociation resources.
class IpAccessSettingsAssociationState {
  /// ARN of the IP access settings to associate with the portal. Forces replacement if changed.
  final pulumi.Input<String>? ipAccessSettingsArn;
  /// ARN of the portal to associate with the IP access settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? portalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [IpAccessSettingsAssociationState].
  /// [ipAccessSettingsArn] ARN of the IP access settings to associate with the portal. Forces replacement if changed.
  /// [portalArn] ARN of the portal to associate with the IP access settings. Forces replacement if changed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  IpAccessSettingsAssociationState({
    this.ipAccessSettingsArn,
    this.portalArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAccessSettingsArn': ?ipAccessSettingsArn,
      'portalArn': ?portalArn,
      'region': ?region,
    };
  }

  factory IpAccessSettingsAssociationState.fromMap(Map<String, dynamic> map) {
    return IpAccessSettingsAssociationState(
      ipAccessSettingsArn: map['ipAccessSettingsArn'] == null ? null : (map['ipAccessSettingsArn'] as String).input(),
      portalArn: map['portalArn'] == null ? null : (map['portalArn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

