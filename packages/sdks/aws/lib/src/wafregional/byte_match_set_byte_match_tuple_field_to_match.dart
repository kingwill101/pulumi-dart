// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ByteMatchSetByteMatchTupleFieldToMatch {
  /// When the value of Type is HEADER, enter the name of the header that you want AWS WAF to search, for example, User-Agent or Referer. If the value of Type is any other value, omit Data.
  final pulumi.Input<String>? data;
  /// The part of the web request that you want AWS WAF to search for a specified string.
  final pulumi.Input<String> type;

  /// Creates a new [ByteMatchSetByteMatchTupleFieldToMatch].
  /// [data] When the value of Type is HEADER, enter the name of the header that you want AWS WAF to search, for example, User-Agent or Referer. If the value of Type is any other value, omit Data.
  /// [type] The part of the web request that you want AWS WAF to search for a specified string.
  const ByteMatchSetByteMatchTupleFieldToMatch({
    this.data,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'type': type,
    };
  }

  factory ByteMatchSetByteMatchTupleFieldToMatch.fromMap(Map<String, dynamic> map) {
    return ByteMatchSetByteMatchTupleFieldToMatch(
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

