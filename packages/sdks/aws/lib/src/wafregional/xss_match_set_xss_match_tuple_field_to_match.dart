// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class XssMatchSetXssMatchTupleFieldToMatch {
  /// When the value of `type` is `HEADER`, enter the name of the header that you want the WAF to search, for example, `User-Agent` or `Referer`. If the value of `type` is any other value, omit `data`.
  final pulumi.Input<String>? data;

  /// The part of the web request that you want AWS WAF to search for a specified stringE.g., `HEADER` or `METHOD`
  final pulumi.Input<String> type;

  /// Creates a new [XssMatchSetXssMatchTupleFieldToMatch].
  /// [data] When the value of `type` is `HEADER`, enter the name of the header that you want the WAF to search, for example, `User-Agent` or `Referer`. If the value of `type` is any other value, omit `data`.
  /// [type] The part of the web request that you want AWS WAF to search for a specified stringE.g., `HEADER` or `METHOD`
  XssMatchSetXssMatchTupleFieldToMatch({this.data, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'data': ?data, 'type': type};
  }

  factory XssMatchSetXssMatchTupleFieldToMatch.fromMap(
    Map<String, dynamic> map,
  ) {
    return XssMatchSetXssMatchTupleFieldToMatch(
      data: (() {
        final guardedValue = map['data'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
