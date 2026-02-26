// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getControl.
class GetControlArgs {
  /// Name of the control.
  final Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Type of control. Valid values are `Custom` and `Standard`.
  final Input<String> type;

  GetControlArgs({
    required this.name,
    this.region,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['type'] = type;
    return map;
  }

  factory GetControlArgs.fromMap(Map<String, dynamic> map) {
    return GetControlArgs(
      name: Input.asInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
