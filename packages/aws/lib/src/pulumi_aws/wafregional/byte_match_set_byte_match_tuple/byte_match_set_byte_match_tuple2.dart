// ignore_for_file: unused_element, unnecessary_cast

import '../byte_match_set_byte_match_tuple_field_to_match/byte_match_set_byte_match_tuple_field_to_match2.dart';

class ByteMatchSetByteMatchTuple2 {
  /// Settings for the ByteMatchTuple. FieldToMatch documented below.
  final ByteMatchSetByteMatchTupleFieldToMatch2 fieldToMatch;

  /// Within the portion of a web request that you want to search.
  final String positionalConstraint;

  /// The value that you want AWS WAF to search for. The maximum length of the value is 50 bytes.
  final String? targetString;

  /// The formatting way for web request.
  ///
  /// FieldToMatch(field_to_match) support following:
  final String textTransformation;

  ByteMatchSetByteMatchTuple2({
    required this.fieldToMatch,
    required this.positionalConstraint,
    this.targetString,
    required this.textTransformation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fieldToMatch'] = fieldToMatch.toMap();
    map['positionalConstraint'] = positionalConstraint;
    final targetStringValue = targetString;
    if (targetStringValue != null) {
      map['targetString'] = targetStringValue;
    }
    map['textTransformation'] = textTransformation;
    return map;
  }

  factory ByteMatchSetByteMatchTuple2.fromMap(Map<String, dynamic> map) {
    return ByteMatchSetByteMatchTuple2(
      fieldToMatch: ByteMatchSetByteMatchTupleFieldToMatch2.fromMap(
          (map['fieldToMatch'] as Map).cast<String, dynamic>()),
      positionalConstraint: map['positionalConstraint'] as String,
      targetString:
          map['targetString'] == null ? null : map['targetString'] as String,
      textTransformation: map['textTransformation'] as String,
    );
  }
}
