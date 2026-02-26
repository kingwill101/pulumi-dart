// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../byte_match_set_byte_match_tuple/byte_match_set_byte_match_tuple2.dart';

/// The set of arguments for ByteMatchSet.
class ByteMatchSetArgs2 {
  /// Settings for the ByteMatchSet, such as the bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to search for in web requests. ByteMatchTuple documented below.
  final Input<List<ByteMatchSetByteMatchTuple2>>? byteMatchTuples;

  /// The name or description of the ByteMatchSet.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  ByteMatchSetArgs2({
    this.byteMatchTuples,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final byteMatchTuplesValue = byteMatchTuples;
    if (byteMatchTuplesValue != null) {
      map['byteMatchTuples'] = Input.mapOptionalInputValue<
              List<ByteMatchSetByteMatchTuple2>, List<Map<String, dynamic>>>(
          byteMatchTuplesValue,
          (value) => Input.encodeList<ByteMatchSetByteMatchTuple2,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ByteMatchSetArgs2.fromMap(Map<String, dynamic> map) {
    return ByteMatchSetArgs2(
      byteMatchTuples: Input.asOptionalInput<List<ByteMatchSetByteMatchTuple2>>(
          map['byteMatchTuples']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
