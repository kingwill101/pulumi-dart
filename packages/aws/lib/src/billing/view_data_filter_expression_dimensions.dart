// ignore_for_file: unused_element, unnecessary_cast


class ViewDataFilterExpressionDimensions {
  /// Key of the dimension. Possible values are `LINKED_ACCOUNT`.
  final String key;
  /// List of metadata values that you can use to filter and group your results.
  final List<String> values;

  /// Creates a new [ViewDataFilterExpressionDimensions].
  /// [key] Key of the dimension. Possible values are `LINKED_ACCOUNT`.
  /// [values] List of metadata values that you can use to filter and group your results.
  ViewDataFilterExpressionDimensions({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory ViewDataFilterExpressionDimensions.fromMap(Map<String, dynamic> map) {
    return ViewDataFilterExpressionDimensions(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

