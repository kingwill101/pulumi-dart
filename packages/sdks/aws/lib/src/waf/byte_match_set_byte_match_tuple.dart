// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'byte_match_set_byte_match_tuple_field_to_match.dart';

class ByteMatchSetByteMatchTuple {
  /// The part of a web request that you want to search, such as a specified header or a query string.
  final pulumi.Input<ByteMatchSetByteMatchTupleFieldToMatch> fieldToMatch;
  /// Within the portion of a web request that you want to search
  /// (for example, in the query string, if any), specify where you want to search.
  /// e.g., `CONTAINS`, `CONTAINS_WORD` or `EXACTLY`.
  /// See [docs](http://docs.aws.amazon.com/waf/latest/APIReference/API_ByteMatchTuple.html#WAF-Type-ByteMatchTuple-PositionalConstraint)
  /// for all supported values.
  final pulumi.Input<String> positionalConstraint;
  /// The value that you want to search for within the field specified by `fieldToMatch`, e.g., `badrefer1`.
  /// See [docs](https://docs.aws.amazon.com/waf/latest/APIReference/API_waf_ByteMatchTuple.html)
  /// for all supported values.
  final pulumi.Input<String?>? targetString;
  /// Text transformations used to eliminate unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
  /// If you specify a transformation, AWS WAF performs the transformation on `targetString` before inspecting a request for a match.
  /// e.g., `CMD_LINE`, `HTML_ENTITY_DECODE` or `NONE`.
  /// See [docs](http://docs.aws.amazon.com/waf/latest/APIReference/API_ByteMatchTuple.html#WAF-Type-ByteMatchTuple-TextTransformation)
  /// for all supported values.
  final pulumi.Input<String> textTransformation;

  /// Creates a new [ByteMatchSetByteMatchTuple].
  /// [fieldToMatch] The part of a web request that you want to search, such as a specified header or a query string.
  /// [positionalConstraint] Within the portion of a web request that you want to search
  /// [targetString] The value that you want to search for within the field specified by `fieldToMatch`, e.g., `badrefer1`.
  /// [textTransformation] Text transformations used to eliminate unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
  const ByteMatchSetByteMatchTuple({
    required this.fieldToMatch,
    required this.positionalConstraint,
    this.targetString,
    required this.textTransformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldToMatch': pulumi.Input.mapInputValue<ByteMatchSetByteMatchTupleFieldToMatch, Map<String, dynamic>>(fieldToMatch, (value) => value.toMap()),
      'positionalConstraint': positionalConstraint,
      'targetString': ?targetString,
      'textTransformation': textTransformation,
    };
  }

  factory ByteMatchSetByteMatchTuple.fromMap(Map<String, dynamic> map) {
    return ByteMatchSetByteMatchTuple(
      fieldToMatch: pulumi.Input.fromValue(ByteMatchSetByteMatchTupleFieldToMatch.fromMap((map['fieldToMatch']! as Map).cast<String, dynamic>())),
      positionalConstraint: pulumi.Input.fromValue(map['positionalConstraint'] as String),
      targetString: (() { final guardedValue = map['targetString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      textTransformation: pulumi.Input.fromValue(map['textTransformation'] as String),
    );
  }
}
