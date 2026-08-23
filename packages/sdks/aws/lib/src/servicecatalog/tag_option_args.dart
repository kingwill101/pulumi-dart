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
  const TagOptionArgs({
    this.active,
    required this.key,
    this.region,
    required this.value,
  });

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
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
