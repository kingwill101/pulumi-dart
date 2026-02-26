// ignore_for_file: unused_element, unnecessary_cast

class SqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatch {
  /// When <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is `HEADER`, enter the name of the header that you want to search, e.g., `User-Agent` or `Referer`.
  /// If <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is any other value, omit this field.
  final String? data;

  /// The part of the web request that you want AWS WAF to search for a specified string.
  /// e.g., `HEADER`, `METHOD` or `BODY`.
  /// See [docs](http://docs.aws.amazon.com/waf/latest/APIReference/API_FieldToMatch.html)
  /// for all supported values.
  final String type;

  SqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatch({
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

  factory SqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatch.fromMap(
      Map<String, dynamic> map) {
    return SqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatch(
      data: map['data'] == null ? null : map['data'] as String,
      type: map['type'] as String,
    );
  }
}
