// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'byte_match_set_byte_match_tuple.dart';

/// {@template pulumi_wafregional_byte_match_set_byte_match_set_args_doc}
/// The set of arguments for ByteMatchSet.
/// {@endtemplate}
/// {@macro pulumi_wafregional_byte_match_set_byte_match_set_args_doc}
class ByteMatchSetArgs {
  /// Settings for the ByteMatchSet, such as the bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to search for in web requests. ByteMatchTuple documented below.
  final pulumi.Input<List<ByteMatchSetByteMatchTuple>>? byteMatchTuples;
  /// The name or description of the ByteMatchSet.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ByteMatchSetArgs].
  /// [byteMatchTuples] Settings for the ByteMatchSet, such as the bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to search for in web requests. ByteMatchTuple documented below.
  /// [name] The name or description of the ByteMatchSet.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const ByteMatchSetArgs({
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

  factory ByteMatchSetArgs.fromMap(Map<String, dynamic> map) {
    return ByteMatchSetArgs(
      byteMatchTuples: (() { final guardedValue = map['byteMatchTuples']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ByteMatchSetByteMatchTuple>(guardedValue, (value) => ByteMatchSetByteMatchTuple.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

