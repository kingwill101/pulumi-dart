// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Association resources.
class AssociationState {
  /// ARN of the license configuration.
  final pulumi.Input<String?>? licenseConfigurationArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the resource associated with the license configuration.
  final pulumi.Input<String?>? resourceArn;

  /// Creates a new [AssociationState].
  /// [licenseConfigurationArn] ARN of the license configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of the resource associated with the license configuration.
  const AssociationState({
    this.licenseConfigurationArn,
    this.region,
    this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseConfigurationArn': ?licenseConfigurationArn,
      'region': ?region,
      'resourceArn': ?resourceArn,
    };
  }

  factory AssociationState.fromMap(Map<String, dynamic> map) {
    return AssociationState(
      licenseConfigurationArn: (() { final guardedValue = map['licenseConfigurationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
