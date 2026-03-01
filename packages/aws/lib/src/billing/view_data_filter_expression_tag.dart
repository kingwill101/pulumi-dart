// ignore_for_file: unused_element, unnecessary_cast

class ViewDataFilterExpressionTag {
  /// Key of the tag.
  final String key;

  /// List of values for the tag.
  final List<String> values;

  /// Creates a new [ViewDataFilterExpressionTag].
  /// [key] Key of the tag.
  /// [values] List of values for the tag.
  ViewDataFilterExpressionTag({required this.key, required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'values': values};
  }

  factory ViewDataFilterExpressionTag.fromMap(Map<String, dynamic> map) {
    return ViewDataFilterExpressionTag(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
