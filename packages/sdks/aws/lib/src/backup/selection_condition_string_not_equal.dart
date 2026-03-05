// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SelectionConditionStringNotEqual {
  /// Key for the filter.
  final pulumi.Input<String> key;
  /// Value for the filter.
  final pulumi.Input<String> value;

  /// Creates a new [SelectionConditionStringNotEqual].
  /// [key] Key for the filter.
  /// [value] Value for the filter.
  SelectionConditionStringNotEqual({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory SelectionConditionStringNotEqual.fromMap(Map<String, dynamic> map) {
    return SelectionConditionStringNotEqual(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

