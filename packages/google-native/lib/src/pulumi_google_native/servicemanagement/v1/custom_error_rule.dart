// ignore_for_file: unused_element, unnecessary_cast

/// A custom error rule.
class CustomErrorRule {
  /// Mark this message as possible payload in error response. Otherwise, objects of this type will be filtered when they appear in error payload.
  final bool? isErrorType;

  /// Selects messages to which this rule applies. Refer to selector for syntax details.
  final String? selector;

  CustomErrorRule({
    this.isErrorType,
    this.selector,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final isErrorTypeValue = isErrorType;
    if (isErrorTypeValue != null) {
      map['isErrorType'] = isErrorTypeValue;
    }
    final selectorValue = selector;
    if (selectorValue != null) {
      map['selector'] = selectorValue;
    }
    return map;
  }

  factory CustomErrorRule.fromMap(Map<String, dynamic> map) {
    return CustomErrorRule(
      isErrorType:
          map['isErrorType'] == null ? null : map['isErrorType'] as bool,
      selector: map['selector'] == null ? null : map['selector'] as String,
    );
  }
}
