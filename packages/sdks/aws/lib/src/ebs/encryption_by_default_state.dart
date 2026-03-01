// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EncryptionByDefault resources.
class EncryptionByDefaultState {
  /// Whether or not default EBS encryption is enabled. Valid values are `true` or `false`. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [EncryptionByDefaultState].
  /// [enabled] Whether or not default EBS encryption is enabled. Valid values are `true` or `false`. Defaults to `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  EncryptionByDefaultState({
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? region,
  }) :
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'region': ?region,
    };
  }

  factory EncryptionByDefaultState.fromMap(Map<String, dynamic> map) {
    return EncryptionByDefaultState(
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

