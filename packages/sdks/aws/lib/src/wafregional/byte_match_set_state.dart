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
  ByteMatchSetState({
    pulumi.Output<List<ByteMatchSetByteMatchTuple>>? byteMatchTuples,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
  }) :
      byteMatchTuples = pulumi.Input.asOptionalInput<List<ByteMatchSetByteMatchTuple>>(byteMatchTuples),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'byteMatchTuples': ?pulumi.Input.mapOptionalInputValue<List<ByteMatchSetByteMatchTuple>, List<Map<String, dynamic>>>(byteMatchTuples, (value) => pulumi.Input.encodeList<ByteMatchSetByteMatchTuple, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
    };
  }

  factory ByteMatchSetState.fromMap(Map<String, dynamic> map) {
    return ByteMatchSetState(
      byteMatchTuples: map['byteMatchTuples'] == null ? null : pulumi.Output.create<List<ByteMatchSetByteMatchTuple>>(pulumi.Input.decodeList<ByteMatchSetByteMatchTuple>(map['byteMatchTuples'], (value) => ByteMatchSetByteMatchTuple.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

