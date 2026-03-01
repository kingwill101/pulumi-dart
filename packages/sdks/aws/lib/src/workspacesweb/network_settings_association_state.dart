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
    pulumi.Output<String>? networkSettingsArn,
    pulumi.Output<String>? portalArn,
    pulumi.Output<String>? region,
  }) :
      networkSettingsArn = pulumi.Input.asOptionalInput<String>(networkSettingsArn),
      portalArn = pulumi.Input.asOptionalInput<String>(portalArn),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkSettingsArn': ?networkSettingsArn,
      'portalArn': ?portalArn,
      'region': ?region,
    };
  }

  factory NetworkSettingsAssociationState.fromMap(Map<String, dynamic> map) {
    return NetworkSettingsAssociationState(
      networkSettingsArn: map['networkSettingsArn'] == null ? null : pulumi.Output.create<String>(map['networkSettingsArn'] as String),
      portalArn: map['portalArn'] == null ? null : pulumi.Output.create<String>(map['portalArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

