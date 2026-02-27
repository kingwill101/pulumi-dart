// ignore_for_file: unused_element, unnecessary_cast

/// License information.
class LicenseContaineranalysisV1beta1 {
  /// Comments
  final String? comments;

  /// Often a single license can be used to represent the licensing terms. Sometimes it is necessary to include a choice of one or more licenses or some combination of license identifiers. Examples: "LGPL-2.1-only OR MIT", "LGPL-2.1-only AND MIT", "GPL-2.0-or-later WITH Bison-exception-2.2".
  final String? expression;

  LicenseContaineranalysisV1beta1({
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

  factory LicenseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return LicenseContaineranalysisV1beta1(
      comments: map['comments'] == null ? null : map['comments'] as String,
      expression:
          map['expression'] == null ? null : map['expression'] as String,
    );
  }
}
