// ignore_for_file: unused_element, unnecessary_cast

class SelectionConditionStringNotEqual {
  /// Key for the filter.
  final String key;

  /// Value for the filter.
  final String value;

  SelectionConditionStringNotEqual({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory SelectionConditionStringNotEqual.fromMap(Map<String, dynamic> map) {
    return SelectionConditionStringNotEqual(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
