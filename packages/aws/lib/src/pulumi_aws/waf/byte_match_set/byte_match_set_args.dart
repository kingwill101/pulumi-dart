// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../byte_match_set_byte_match_tuple/byte_match_set_byte_match_tuple.dart';

/// The set of arguments for ByteMatchSet.
class ByteMatchSetArgs {
  /// Specifies the bytes (typically a string that corresponds
  /// with ASCII characters) that you want to search for in web requests,
  /// the location in requests that you want to search, and other settings.
  final Input<List<ByteMatchSetByteMatchTuple>>? byteMatchTuples;

  /// The name or description of the Byte Match Set.
  final Input<String>? name;

  ByteMatchSetArgs({
    this.byteMatchTuples,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final byteMatchTuplesValue = byteMatchTuples;
    if (byteMatchTuplesValue != null) {
      map['byteMatchTuples'] = Input.mapOptionalInputValue<
              List<ByteMatchSetByteMatchTuple>, List<Map<String, dynamic>>>(
          byteMatchTuplesValue,
          (value) => Input.encodeList<ByteMatchSetByteMatchTuple,
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
      byteMatchTuples: Input.asOptionalInput<List<ByteMatchSetByteMatchTuple>>(
          map['byteMatchTuples']),
      name: Input.asOptionalInput<String>(map['name']),
    );
  }
}
