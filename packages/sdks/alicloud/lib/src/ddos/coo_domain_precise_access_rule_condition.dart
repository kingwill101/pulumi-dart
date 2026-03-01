// ignore_for_file: unused_element, unnecessary_cast


class CooDomainPreciseAccessRuleCondition {
  /// Matching content.
  final String content;
  /// Matching field.
  final String field;
  /// Custom HTTP header field name.
  ///
  /// > **NOTE:**  Valid only when `Field` is `header`.
  final String? headerName;
  /// Matching method.
  final String matchMethod;

  /// Creates a new [CooDomainPreciseAccessRuleCondition].
  /// [content] Matching content.
  /// [field] Matching field.
  /// [headerName] Custom HTTP header field name.
  /// [matchMethod] Matching method.
  CooDomainPreciseAccessRuleCondition({
    required this.content,
    required this.field,
    this.headerName,
    required this.matchMethod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'field': field,
      'headerName': ?headerName,
      'matchMethod': matchMethod,
    };
  }

  factory CooDomainPreciseAccessRuleCondition.fromMap(Map<String, dynamic> map) {
    return CooDomainPreciseAccessRuleCondition(
      content: map['content'] as String,
      field: map['field'] as String,
      headerName: map['headerName'] == null ? null : map['headerName'] as String,
      matchMethod: map['matchMethod'] as String,
    );
  }
}

