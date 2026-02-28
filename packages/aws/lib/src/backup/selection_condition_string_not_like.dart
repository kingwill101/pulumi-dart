// ignore_for_file: unused_element, unnecessary_cast

class SelectionConditionStringNotLike {
  /// Key for the filter.
  final String key;

  /// Value for the filter.
  final String value;

  /// Creates a new [SelectionConditionStringNotLike].
  /// [key] Key for the filter.
  /// [value] Value for the filter.
  SelectionConditionStringNotLike({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory SelectionConditionStringNotLike.fromMap(Map<String, dynamic> map) {
    return SelectionConditionStringNotLike(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
