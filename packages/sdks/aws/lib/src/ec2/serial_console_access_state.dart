// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SerialConsoleAccess resources.
class SerialConsoleAccessState {
  /// Whether or not serial console access is enabled. Valid values are `true` or `false`. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [SerialConsoleAccessState].
  /// [enabled] Whether or not serial console access is enabled. Valid values are `true` or `false`. Defaults to `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  SerialConsoleAccessState({
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

  factory SerialConsoleAccessState.fromMap(Map<String, dynamic> map) {
    return SerialConsoleAccessState(
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

