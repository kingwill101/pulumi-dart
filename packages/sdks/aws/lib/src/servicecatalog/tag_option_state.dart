// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TagOption resources.
class TagOptionState {
  /// Whether tag option is active. Default is `true`.
  final pulumi.Input<bool?>? active;
  /// Tag option key.
  final pulumi.Input<String?>? key;
  final pulumi.Input<String?>? owner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Tag option value.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? value;

  /// Creates a new [TagOptionState].
  /// [active] Whether tag option is active. Default is `true`.
  /// [key] Tag option key.
  /// [owner] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [value] Tag option value.
  const TagOptionState({
    this.active,
    this.key,
    this.owner,
    this.region,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'key': ?key,
      'owner': ?owner,
      'region': ?region,
      'value': ?value,
    };
  }

  factory TagOptionState.fromMap(Map<String, dynamic> map) {
    return TagOptionState(
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
