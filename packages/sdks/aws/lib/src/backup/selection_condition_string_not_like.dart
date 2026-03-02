// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SelectionConditionStringNotLike {
  /// Key for the filter.
  final pulumi.Input<String> key;
  /// Value for the filter.
  final pulumi.Input<String> value;

  /// Creates a new [SelectionConditionStringNotLike].
  /// [key] Key for the filter.
  /// [value] Value for the filter.
  SelectionConditionStringNotLike({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory SelectionConditionStringNotLike.fromMap(Map<String, dynamic> map) {
    return SelectionConditionStringNotLike(
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

