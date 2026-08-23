// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'byte_match_set_byte_match_tuple.dart';

/// Input properties used for looking up and filtering ByteMatchSet resources.
class ByteMatchSetState {
  /// Settings for the ByteMatchSet, such as the bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to search for in web requests. ByteMatchTuple documented below.
  final pulumi.Input<List<ByteMatchSetByteMatchTuple>>? byteMatchTuples;
  /// The name or description of the ByteMatchSet.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ByteMatchSetState].
  /// [byteMatchTuples] Settings for the ByteMatchSet, such as the bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to search for in web requests. ByteMatchTuple documented below.
  /// [name] The name or description of the ByteMatchSet.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const ByteMatchSetState({
    this.byteMatchTuples,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'byteMatchTuples': ?pulumi.Input.mapOptionalInputValue<List<ByteMatchSetByteMatchTuple>, List<Map<String, dynamic>>>(byteMatchTuples, (value) => pulumi.Input.encodeList<ByteMatchSetByteMatchTuple, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
    };
  }

  factory ByteMatchSetState.fromMap(Map<String, dynamic> map) {
    return ByteMatchSetState(
      byteMatchTuples: (() { final guardedValue = map['byteMatchTuples']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ByteMatchSetByteMatchTuple>(guardedValue, (value) => ByteMatchSetByteMatchTuple.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
