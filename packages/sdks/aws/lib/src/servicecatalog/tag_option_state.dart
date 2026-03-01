// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TagOption resources.
class TagOptionState {
  /// Whether tag option is active. Default is `true`.
  final pulumi.Input<bool>? active;
  /// Tag option key.
  final pulumi.Input<String>? key;
  final pulumi.Input<String>? owner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tag option value.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? value;

  /// Creates a new [TagOptionState].
  /// [active] Whether tag option is active. Default is `true`.
  /// [key] Tag option key.
  /// [owner] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [value] Tag option value.
  TagOptionState({
    pulumi.Output<bool>? active,
    pulumi.Output<String>? key,
    pulumi.Output<String>? owner,
    pulumi.Output<String>? region,
    pulumi.Output<String>? value,
  }) :
      active = pulumi.Input.asOptionalInput<bool>(active),
      key = pulumi.Input.asOptionalInput<String>(key),
      owner = pulumi.Input.asOptionalInput<String>(owner),
      region = pulumi.Input.asOptionalInput<String>(region),
      value = pulumi.Input.asOptionalInput<String>(value);

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
      active: map['active'] == null ? null : pulumi.Output.create<bool>(map['active'] as bool),
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      owner: map['owner'] == null ? null : pulumi.Output.create<String>(map['owner'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

