// ignore_for_file: unused_element, unnecessary_cast

/// License information.
class License {
  /// Comments
  final String? comments;

  /// Often a single license can be used to represent the licensing terms. Sometimes it is necessary to include a choice of one or more licenses or some combination of license identifiers. Examples: "LGPL-2.1-only OR MIT", "LGPL-2.1-only AND MIT", "GPL-2.0-or-later WITH Bison-exception-2.2".
  final String? expression;

  /// Creates a new [License].
  /// [comments] Comments
  /// [expression] Often a single license can be used to represent the licensing terms. Sometimes it is necessary to include a choice of one or more licenses or some combination of license identifiers. Examples: "LGPL-2.1-only OR MIT", "LGPL-2.1-only AND MIT", "GPL-2.0-or-later WITH Bison-exception-2.2".
  License({
    this.comments,
    this.expression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commentsValue = comments;
    if (commentsValue != null) {
      map['comments'] = commentsValue;
    }
    final expressionValue = expression;
    if (expressionValue != null) {
      map['expression'] = expressionValue;
    }
    return map;
  }

  factory License.fromMap(Map<String, dynamic> map) {
    return License(
      comments: map['comments'] == null ? null : map['comments'] as String,
      expression:
          map['expression'] == null ? null : map['expression'] as String,
    );
  }
}
