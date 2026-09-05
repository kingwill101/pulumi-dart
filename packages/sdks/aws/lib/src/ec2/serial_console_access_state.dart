// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SerialConsoleAccess resources.
class SerialConsoleAccessState {
  /// Whether or not serial console access is enabled. Valid values are `true` or `false`. Defaults to `true`.
  final pulumi.Input<bool?>? enabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [SerialConsoleAccessState].
  /// [enabled] Whether or not serial console access is enabled. Valid values are `true` or `false`. Defaults to `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const SerialConsoleAccessState({
    this.enabled,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'region': ?region,
    };
  }

  factory SerialConsoleAccessState.fromMap(Map<String, dynamic> map) {
    return SerialConsoleAccessState(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
