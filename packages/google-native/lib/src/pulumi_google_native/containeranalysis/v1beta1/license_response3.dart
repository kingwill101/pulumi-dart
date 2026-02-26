// ignore_for_file: unused_element, unnecessary_cast

/// License information.
class LicenseResponse3 {
  /// Comments
  final String comments;

  /// Often a single license can be used to represent the licensing terms. Sometimes it is necessary to include a choice of one or more licenses or some combination of license identifiers. Examples: "LGPL-2.1-only OR MIT", "LGPL-2.1-only AND MIT", "GPL-2.0-or-later WITH Bison-exception-2.2".
  final String expression;

  LicenseResponse3({
    required this.comments,
    required this.expression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comments'] = comments;
    map['expression'] = expression;
    return map;
  }

  factory LicenseResponse3.fromMap(Map<String, dynamic> map) {
    return LicenseResponse3(
      comments: map['comments'] as String,
      expression: map['expression'] as String,
    );
  }
}
