// ignore_for_file: unused_element, unnecessary_cast

/// The config for streaming-based notifications, which send each event as soon as it is detected.
class StreamingConfigResponse {
  /// Expression that defines the filter to apply across create/update events of assets or findings as specified by the event type. The expression is a list of zero or more restrictions combined via logical operators `AND` and `OR`. Parentheses are supported, and `OR` has higher precedence than `AND`. Restrictions have the form ` ` and may have a `-` character in front of them to indicate negation. The fields map to those defined in the corresponding resource. The supported operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning substring matching, for strings. The supported value types are: * string literals in quotes. * integer literals without quotes. * boolean literals `true` and `false` without quotes.
  final String filter;

  /// Creates a new [StreamingConfigResponse].
  /// [filter] Expression that defines the filter to apply across create/update events of assets or findings as specified by the event type. The expression is a list of zero or more restrictions combined via logical operators `AND` and `OR`. Parentheses are supported, and `OR` has higher precedence than `AND`. Restrictions have the form ` ` and may have a `-` character in front of them to indicate negation. The fields map to those defined in the corresponding resource. The supported operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning substring matching, for strings. The supported value types are: * string literals in quotes. * integer literals without quotes. * boolean literals `true` and `false` without quotes.
  StreamingConfigResponse({required this.filter});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'filter': filter};
  }

  factory StreamingConfigResponse.fromMap(Map<String, dynamic> map) {
    return StreamingConfigResponse(filter: map['filter'] as String);
  }
}
