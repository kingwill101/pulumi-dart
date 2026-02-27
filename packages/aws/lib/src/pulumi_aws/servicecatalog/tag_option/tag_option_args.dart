// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for TagOption.
class TagOptionArgs {
  /// Whether tag option is active. Default is `true`.
  final Input<bool>? active;

  /// Tag option key.
  final Input<String> key;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Tag option value.
  ///
  /// The following arguments are optional:
  final Input<String> value;

  TagOptionArgs({
    this.active,
    required this.key,
    this.region,
    required this.value,
  });

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
      active: Input.asOptionalInput<bool>(map['active']),
      key: Input.asInput<String>(map['key']),
      region: Input.asOptionalInput<String>(map['region']),
      value: Input.asInput<String>(map['value']),
    );
  }
}
