// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../byte_match_set_byte_match_tuple/byte_match_set_byte_match_tuple_wafregional.dart';

/// The set of arguments for ByteMatchSet.
class ByteMatchSetWafregionalArgs {
  /// Settings for the ByteMatchSet, such as the bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to search for in web requests. ByteMatchTuple documented below.
  final pulumi.Input<List<ByteMatchSetByteMatchTupleWafregional>>?
      byteMatchTuples;

  /// The name or description of the ByteMatchSet.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  ByteMatchSetWafregionalArgs({
    this.byteMatchTuples,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final byteMatchTuplesValue = byteMatchTuples;
    if (byteMatchTuplesValue != null) {
      map['byteMatchTuples'] = pulumi.Input.mapOptionalInputValue<
              List<ByteMatchSetByteMatchTupleWafregional>,
              List<Map<String, dynamic>>>(
          byteMatchTuplesValue,
          (value) => pulumi.Input.encodeList<
              ByteMatchSetByteMatchTupleWafregional,
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

  factory ByteMatchSetWafregionalArgs.fromMap(Map<String, dynamic> map) {
    return ByteMatchSetWafregionalArgs(
      byteMatchTuples: pulumi.Input.asOptionalInput<
          List<ByteMatchSetByteMatchTupleWafregional>>(map['byteMatchTuples']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
