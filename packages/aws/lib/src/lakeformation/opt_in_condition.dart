// ignore_for_file: unused_element, unnecessary_cast

class OptInCondition {
  /// List of LF-tag conditions or a saved expression that apply to the resource's LF-Tag policy.
  final String? expression;

  /// Creates a new [OptInCondition].
  /// [expression] List of LF-tag conditions or a saved expression that apply to the resource's LF-Tag policy.
  OptInCondition({
    this.expression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final expressionValue = expression;
    if (expressionValue != null) {
      map['expression'] = expressionValue;
    }
    return map;
  }

  factory OptInCondition.fromMap(Map<String, dynamic> map) {
    return OptInCondition(
      expression:
          map['expression'] == null ? null : map['expression'] as String,
    );
  }
}
