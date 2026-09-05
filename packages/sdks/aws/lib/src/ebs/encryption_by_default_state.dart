// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EncryptionByDefault resources.
class EncryptionByDefaultState {
  /// Whether or not default EBS encryption is enabled. Valid values are `true` or `false`. Defaults to `true`.
  final pulumi.Input<bool?>? enabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [EncryptionByDefaultState].
  /// [enabled] Whether or not default EBS encryption is enabled. Valid values are `true` or `false`. Defaults to `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const EncryptionByDefaultState({
    this.enabled,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'region': ?region,
    };
  }

  factory EncryptionByDefaultState.fromMap(Map<String, dynamic> map) {
    return EncryptionByDefaultState(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
