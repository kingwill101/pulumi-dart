// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_tag_option_tag_option_args_doc}
/// The set of arguments for TagOption.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_tag_option_tag_option_args_doc}
class TagOptionArgs {
  /// Whether tag option is active. Default is `true`.
  final pulumi.Input<bool>? active;
  /// Tag option key.
  final pulumi.Input<String> key;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tag option value.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> value;

  /// Creates a new [TagOptionArgs].
  /// [active] Whether tag option is active. Default is `true`.
  /// [key] Tag option key.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [value] Tag option value.
  TagOptionArgs({
    pulumi.Output<bool>? active,
    required pulumi.Output<String> key,
    pulumi.Output<String>? region,
    required pulumi.Output<String> value,
  }) :
      active = pulumi.Input.asOptionalInput<bool>(active),
      key = pulumi.Input.asInput<String>(key),
      region = pulumi.Input.asOptionalInput<String>(region),
      value = pulumi.Input.asInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'key': key,
      'region': ?region,
      'value': value,
    };
  }

  factory TagOptionArgs.fromMap(Map<String, dynamic> map) {
    return TagOptionArgs(
      active: map['active'] == null ? null : pulumi.Output.create<bool>(map['active'] as bool),
      key: pulumi.Output.create<String>(map['key'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      value: pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

