// ignore_for_file: unused_element, unnecessary_cast

/// License information.
class LicenseResponse {
  /// Comments
  final String comments;

  /// Often a single license can be used to represent the licensing terms. Sometimes it is necessary to include a choice of one or more licenses or some combination of license identifiers. Examples: "LGPL-2.1-only OR MIT", "LGPL-2.1-only AND MIT", "GPL-2.0-or-later WITH Bison-exception-2.2".
  final String expression;

  /// Creates a new [LicenseResponse].
  /// [comments] Comments
  /// [expression] Often a single license can be used to represent the licensing terms. Sometimes it is necessary to include a choice of one or more licenses or some combination of license identifiers. Examples: "LGPL-2.1-only OR MIT", "LGPL-2.1-only AND MIT", "GPL-2.0-or-later WITH Bison-exception-2.2".
  LicenseResponse({
    required this.comments,
    required this.expression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comments'] = comments;
    map['expression'] = expression;
    return map;
  }

  factory LicenseResponse.fromMap(Map<String, dynamic> map) {
    return LicenseResponse(
      comments: map['comments'] as String,
      expression: map['expression'] as String,
    );
  }
}
