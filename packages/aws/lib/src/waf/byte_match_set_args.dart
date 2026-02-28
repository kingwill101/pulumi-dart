// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'byte_match_set_byte_match_tuple.dart';

/// {@template pulumi_waf_byte_match_set_byte_match_set_args_doc}
/// The set of arguments for ByteMatchSet.
/// {@endtemplate}
/// {@macro pulumi_waf_byte_match_set_byte_match_set_args_doc}
class ByteMatchSetArgs {
  /// Specifies the bytes (typically a string that corresponds
  /// with ASCII characters) that you want to search for in web requests,
  /// the location in requests that you want to search, and other settings.
  final pulumi.Input<List<ByteMatchSetByteMatchTuple>>? byteMatchTuples;

  /// The name or description of the Byte Match Set.
  final pulumi.Input<String>? name;

  /// Creates a new [ByteMatchSetArgs].
  /// [byteMatchTuples] Specifies the bytes (typically a string that corresponds
  /// [name] The name or description of the Byte Match Set.
  ByteMatchSetArgs({
    List<ByteMatchSetByteMatchTuple>? byteMatchTuples,
    String? name,
  })  : byteMatchTuples =
            pulumi.Input.asOptionalInput<List<ByteMatchSetByteMatchTuple>>(
                byteMatchTuples),
        name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final byteMatchTuplesValue = byteMatchTuples;
    if (byteMatchTuplesValue != null) {
      map['byteMatchTuples'] = pulumi.Input.mapOptionalInputValue<
              List<ByteMatchSetByteMatchTuple>, List<Map<String, dynamic>>>(
          byteMatchTuplesValue,
          (value) => pulumi.Input.encodeList<ByteMatchSetByteMatchTuple,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory ByteMatchSetArgs.fromMap(Map<String, dynamic> map) {
    return ByteMatchSetArgs(
      byteMatchTuples: map['byteMatchTuples'] == null
          ? null
          : pulumi.Input.decodeList<ByteMatchSetByteMatchTuple>(
              map['byteMatchTuples'],
              (value) => ByteMatchSetByteMatchTuple.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
