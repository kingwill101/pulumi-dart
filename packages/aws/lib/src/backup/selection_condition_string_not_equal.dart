// ignore_for_file: unused_element, unnecessary_cast


class SelectionConditionStringNotEqual {
  /// Key for the filter.
  final String key;
  /// Value for the filter.
  final String value;

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
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

