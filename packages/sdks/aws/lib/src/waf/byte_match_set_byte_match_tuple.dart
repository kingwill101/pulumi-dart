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
  /// The value that you want to search for within the field specified by `field_to_match`, e.g., `badrefer1`.
  /// See [docs](https://docs.aws.amazon.com/waf/latest/APIReference/API_waf_ByteMatchTuple.html)
  /// for all supported values.
  final pulumi.Input<String>? targetString;
  /// Text transformations used to eliminate unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
  /// If you specify a transformation, AWS WAF performs the transformation on `target_string` before inspecting a request for a match.
  /// e.g., `CMD_LINE`, `HTML_ENTITY_DECODE` or `NONE`.
  /// See [docs](http://docs.aws.amazon.com/waf/latest/APIReference/API_ByteMatchTuple.html#WAF-Type-ByteMatchTuple-TextTransformation)
  /// for all supported values.
  final pulumi.Input<String> textTransformation;

  /// Creates a new [ByteMatchSetByteMatchTuple].
  /// [fieldToMatch] The part of a web request that you want to search, such as a specified header or a query string.
  /// [positionalConstraint] Within the portion of a web request that you want to search
  /// [targetString] The value that you want to search for within the field specified by `field_to_match`, e.g., `badrefer1`.
  /// [textTransformation] Text transformations used to eliminate unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
  ByteMatchSetByteMatchTuple({
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
      fieldToMatch: (ByteMatchSetByteMatchTupleFieldToMatch.fromMap((map['fieldToMatch'] as Map).cast<String, dynamic>())).input(),
      positionalConstraint: (map['positionalConstraint'] as String).input(),
      targetString: map['targetString'] == null ? null : (map['targetString'] as String).input(),
      textTransformation: (map['textTransformation'] as String).input(),
    );
  }
}

