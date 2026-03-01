// ignore_for_file: unused_element, unnecessary_cast


class SizeConstraintSetSizeConstraintFieldToMatch {
  /// When `type` is `HEADER`, enter the name of the header that you want to search, e.g., `User-Agent` or `Referer`.
  /// If `type` is any other value, omit this field.
  final String? data;
  /// The part of the web request that you want AWS WAF to search for a specified string.
  /// e.g., `HEADER`, `METHOD` or `BODY`.
  /// See [docs](http://docs.aws.amazon.com/waf/latest/APIReference/API_FieldToMatch.html)
  /// for all supported values.
  final String type;

  /// Creates a new [SizeConstraintSetSizeConstraintFieldToMatch].
  /// [data] When `type` is `HEADER`, enter the name of the header that you want to search, e.g., `User-Agent` or `Referer`.
  /// [type] The part of the web request that you want AWS WAF to search for a specified string.
  SizeConstraintSetSizeConstraintFieldToMatch({
    this.data,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'type': type,
    };
  }

  factory SizeConstraintSetSizeConstraintFieldToMatch.fromMap(Map<String, dynamic> map) {
    return SizeConstraintSetSizeConstraintFieldToMatch(
      data: map['data'] == null ? null : map['data'] as String,
      type: map['type'] as String,
    );
  }
}

