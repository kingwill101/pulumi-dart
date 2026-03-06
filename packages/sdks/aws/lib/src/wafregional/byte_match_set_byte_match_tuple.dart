// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'byte_match_set_byte_match_tuple_field_to_match.dart';

class ByteMatchSetByteMatchTuple {
  /// Settings for the ByteMatchTuple. FieldToMatch documented below.
  final pulumi.Input<ByteMatchSetByteMatchTupleFieldToMatch> fieldToMatch;
  /// Within the portion of a web request that you want to search.
  final pulumi.Input<String> positionalConstraint;
  /// The value that you want AWS WAF to search for. The maximum length of the value is 50 bytes.
  final pulumi.Input<String>? targetString;
  /// The formatting way for web request.
  ///
  /// FieldToMatch(field_to_match) support following:
  final pulumi.Input<String> textTransformation;

  /// Creates a new [ByteMatchSetByteMatchTuple].
  /// [fieldToMatch] Settings for the ByteMatchTuple. FieldToMatch documented below.
  /// [positionalConstraint] Within the portion of a web request that you want to search.
  /// [targetString] The value that you want AWS WAF to search for. The maximum length of the value is 50 bytes.
  /// [textTransformation] The formatting way for web request.
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

