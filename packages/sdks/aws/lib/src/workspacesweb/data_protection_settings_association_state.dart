// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataProtectionSettingsAssociation resources.
class DataProtectionSettingsAssociationState {
  /// ARN of the data protection settings to associate with the portal. Forces replacement if changed.
  final pulumi.Input<String>? dataProtectionSettingsArn;
  /// ARN of the portal to associate with the data protection settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? portalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DataProtectionSettingsAssociationState].
  /// [dataProtectionSettingsArn] ARN of the data protection settings to associate with the portal. Forces replacement if changed.
  /// [portalArn] ARN of the portal to associate with the data protection settings. Forces replacement if changed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DataProtectionSettingsAssociationState({
    pulumi.Output<String>? dataProtectionSettingsArn,
    pulumi.Output<String>? portalArn,
    pulumi.Output<String>? region,
  }) :
      dataProtectionSettingsArn = pulumi.Input.asOptionalInput<String>(dataProtectionSettingsArn),
      portalArn = pulumi.Input.asOptionalInput<String>(portalArn),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataProtectionSettingsArn': ?dataProtectionSettingsArn,
      'portalArn': ?portalArn,
      'region': ?region,
    };
  }

  factory DataProtectionSettingsAssociationState.fromMap(Map<String, dynamic> map) {
    return DataProtectionSettingsAssociationState(
      dataProtectionSettingsArn: map['dataProtectionSettingsArn'] == null ? null : pulumi.Output.create<String>(map['dataProtectionSettingsArn'] as String),
      portalArn: map['portalArn'] == null ? null : pulumi.Output.create<String>(map['portalArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

