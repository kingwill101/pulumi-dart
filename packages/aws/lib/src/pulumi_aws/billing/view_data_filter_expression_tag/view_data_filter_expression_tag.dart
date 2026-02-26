// ignore_for_file: unused_element, unnecessary_cast

class ViewDataFilterExpressionTag {
  /// Key of the tag.
  final String key;

  /// List of values for the tag.
  final List<String> values;

  ViewDataFilterExpressionTag({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['values'] = values;
    return map;
  }

  factory ViewDataFilterExpressionTag.fromMap(Map<String, dynamic> map) {
    return ViewDataFilterExpressionTag(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
