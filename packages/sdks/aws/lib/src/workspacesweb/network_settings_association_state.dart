// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkSettingsAssociation resources.
class NetworkSettingsAssociationState {
  /// ARN of the network settings to associate with the portal. Forces replacement if changed.
  final pulumi.Input<String>? networkSettingsArn;
  /// ARN of the portal to associate with the network settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? portalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [NetworkSettingsAssociationState].
  /// [networkSettingsArn] ARN of the network settings to associate with the portal. Forces replacement if changed.
  /// [portalArn] ARN of the portal to associate with the network settings. Forces replacement if changed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  NetworkSettingsAssociationState({
    this.networkSettingsArn,
    this.portalArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkSettingsArn': ?networkSettingsArn,
      'portalArn': ?portalArn,
      'region': ?region,
    };
  }

  factory NetworkSettingsAssociationState.fromMap(Map<String, dynamic> map) {
    return NetworkSettingsAssociationState(
      networkSettingsArn: map['networkSettingsArn'] == null ? null : ((map['networkSettingsArn'] as String).input()).input(),
      portalArn: map['portalArn'] == null ? null : ((map['portalArn'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

