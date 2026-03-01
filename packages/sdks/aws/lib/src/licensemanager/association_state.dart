// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Association resources.
class AssociationState {
  /// ARN of the license configuration.
  final pulumi.Input<String>? licenseConfigurationArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the resource associated with the license configuration.
  final pulumi.Input<String>? resourceArn;

  /// Creates a new [AssociationState].
  /// [licenseConfigurationArn] ARN of the license configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of the resource associated with the license configuration.
  AssociationState({
    pulumi.Output<String>? licenseConfigurationArn,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceArn,
  }) :
      licenseConfigurationArn = pulumi.Input.asOptionalInput<String>(licenseConfigurationArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceArn = pulumi.Input.asOptionalInput<String>(resourceArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseConfigurationArn': ?licenseConfigurationArn,
      'region': ?region,
      'resourceArn': ?resourceArn,
    };
  }

  factory AssociationState.fromMap(Map<String, dynamic> map) {
    return AssociationState(
      licenseConfigurationArn: map['licenseConfigurationArn'] == null ? null : pulumi.Output.create<String>(map['licenseConfigurationArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceArn: map['resourceArn'] == null ? null : pulumi.Output.create<String>(map['resourceArn'] as String),
    );
  }
}

