// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OrganizationConfiguration resources.
class OrganizationConfigurationState {
  /// Whether to enable Amazon Macie automatically for accounts that are added to the organization in AWS Organizations.
  final pulumi.Input<bool?>? autoEnable;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [OrganizationConfigurationState].
  /// [autoEnable] Whether to enable Amazon Macie automatically for accounts that are added to the organization in AWS Organizations.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const OrganizationConfigurationState({
    this.autoEnable,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoEnable': ?autoEnable,
      'region': ?region,
    };
  }

  factory OrganizationConfigurationState.fromMap(Map<String, dynamic> map) {
    return OrganizationConfigurationState(
      autoEnable: (() { final guardedValue = map['autoEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
