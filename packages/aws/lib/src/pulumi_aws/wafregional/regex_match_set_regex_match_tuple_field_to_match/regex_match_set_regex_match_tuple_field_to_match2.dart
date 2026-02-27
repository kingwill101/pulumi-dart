// ignore_for_file: unused_element, unnecessary_cast

class RegexMatchSetRegexMatchTupleFieldToMatch2 {
  /// When `type` is `HEADER`, enter the name of the header that you want to search, e.g., `User-Agent` or `Referer`.
  /// If `type` is any other value, omit this field.
  final String? data;

  /// The part of the web request that you want AWS WAF to search for a specified string.
  /// e.g., `HEADER`, `METHOD` or `BODY`.
  /// See [docs](http://docs.aws.amazon.com/waf/latest/APIReference/API_FieldToMatch.html)
  /// for all supported values.
  final String type;

  RegexMatchSetRegexMatchTupleFieldToMatch2({
    this.data,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataValue = data;
    if (dataValue != null) {
      map['data'] = dataValue;
    }
    map['type'] = type;
    return map;
  }

  factory RegexMatchSetRegexMatchTupleFieldToMatch2.fromMap(
      Map<String, dynamic> map) {
    return RegexMatchSetRegexMatchTupleFieldToMatch2(
      data: map['data'] == null ? null : map['data'] as String,
      type: map['type'] as String,
    );
  }
}
