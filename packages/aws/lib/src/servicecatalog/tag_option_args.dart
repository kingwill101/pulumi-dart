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
    bool? active,
    required String key,
    String? region,
    required String value,
  })  : active = pulumi.Input.asOptionalInput<bool>(active),
        key = pulumi.Input.asInput<String>(key),
        region = pulumi.Input.asOptionalInput<String>(region),
        value = pulumi.Input.asInput<String>(value);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activeValue = active;
    if (activeValue != null) {
      map['active'] = activeValue;
    }
    map['key'] = key;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['value'] = value;
    return map;
  }

  factory TagOptionArgs.fromMap(Map<String, dynamic> map) {
    return TagOptionArgs(
      active: map['active'] == null ? null : map['active'] as bool,
      key: map['key'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      value: map['value'] as String,
    );
  }
}
