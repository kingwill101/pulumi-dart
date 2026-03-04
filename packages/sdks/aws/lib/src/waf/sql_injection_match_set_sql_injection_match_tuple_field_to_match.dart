// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatch {
  /// When `type` is `HEADER`, enter the name of the header that you want to search, e.g., `User-Agent` or `Referer`.
  /// If `type` is any other value, omit this field.
  final pulumi.Input<String>? data;

  /// The part of the web request that you want AWS WAF to search for a specified string.
  /// e.g., `HEADER`, `METHOD` or `BODY`.
  /// See [docs](http://docs.aws.amazon.com/waf/latest/APIReference/API_FieldToMatch.html)
  /// for all supported values.
  final pulumi.Input<String> type;

  /// Creates a new [SqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatch].
  /// [data] When `type` is `HEADER`, enter the name of the header that you want to search, e.g., `User-Agent` or `Referer`.
  /// [type] The part of the web request that you want AWS WAF to search for a specified string.
  SqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatch({
    this.data,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'data': ?data, 'type': type};
  }

  factory SqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatch.fromMap(
    Map<String, dynamic> map,
  ) {
    return SqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatch(
      data: (() {
        final guardedValue = map['data'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
